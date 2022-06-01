import 'package:challenge_app/app/add_markers/add_markers_bloc.dart';
import 'package:challenge_app/app/get_user_location/get_user_location_bloc.dart';
import 'package:challenge_app/injection.dart';
import 'package:challenge_app/utils/calculate_distance_of_markers.dart';
import 'package:challenge_app/utils/compare_distance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:kt_dart/kt.dart';
import "package:latlong2/latlong.dart";

class OsmPage extends StatefulWidget {
  const OsmPage({Key? key}) : super(key: key);

  @override
  State<OsmPage> createState() => _OsmPageState();
}

class _OsmPageState extends State<OsmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Open Street Map')),
      body: MultiBlocProvider(
        providers: [
          BlocProvider<GetUserLocationBloc>(
              create: (context) => getIt<GetUserLocationBloc>()
                ..add(const GetUserLocationEvent.started())),
          BlocProvider<AddMarkersBloc>(
            create: (context) => getIt<AddMarkersBloc>(),
          )
        ],
        child: BlocBuilder<GetUserLocationBloc, GetUserLocationState>(
          builder: (context, state) {
            return state.map(inProgress: ((value) {
              return Container();
            }), initial: (_) {
              return Container();
            }, success: (state) {
              KtList<double> distances =
                  context.read<AddMarkersBloc>().state.distances;
              KtList<double> sortedDistances = compareDistance(
                  context.read<AddMarkersBloc>().state.distances);
              KtList<LatLng> tappedPoints =
                  context.read<AddMarkersBloc>().state.tappedPoints;
              KtList<Marker> markers = context
                  .read<AddMarkersBloc>()
                  .state
                  .tappedPoints
                  .mapIndexed((i, latlng) {
                return Marker(
                  width: 70.0,
                  height: 70.0,
                  point: latlng,
                  builder: (ctx) => Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: sortedDistances.isNotEmpty() &&
                              tappedPoints.size == distances.size &&
                              sortedDistances.size > 2 &&
                              distances[i] < sortedDistances[2]
                          ? Colors.green.withOpacity(0.8)
                          : Colors.red.withOpacity(0.8),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white, // inner circle color
                        ),
                        child: Column(
                          children: [
                            Text(i.toString()),
                            distances.size == tappedPoints.size
                                ? Text(distances[i].round().toString())
                                : const Text(''),
                            const Icon(
                              Icons.car_rental_rounded,
                              color: Colors.black45,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });

              List<CircleMarker> circleMarker = <CircleMarker>[
                CircleMarker(
                  point: LatLng(
                    state.locationData.latitude!,
                    state.locationData.longitude!,
                  ),
                  color: Colors.blue.withOpacity(0.7),
                  borderStrokeWidth: 2,
                  useRadiusInMeter: true,
                  radius: 100,
                ),
              ];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          var res = calculateDistanceInMeter(
                              context
                                  .read<AddMarkersBloc>()
                                  .state
                                  .tappedPoints
                                  .asList()
                                  .map((e) => e)
                                  .toImmutableList(),
                              LatLng(
                                state.locationData.latitude!,
                                state.locationData.longitude!,
                              ));

                          context.read<AddMarkersBloc>().add(
                              AddMarkersEvent.updateDistance(distances: res));
                          setState(() {});
                          // print(res);
                        },
                        child: const Text('Calculte distance')),
                    Flexible(
                      child: FlutterMap(
                        options: MapOptions(
                          center: LatLng(
                            state.locationData.latitude!,
                            state.locationData.longitude!,
                          ),
                          zoom: 13.0,
                          onTap: (_, latlng) {
                            context
                                .read<AddMarkersBloc>()
                                .add(AddMarkersEvent.add(latLng: latlng));

                            setState(() {});
                          },
                        ),
                        layers: [
                          TileLayerOptions(
                            urlTemplate:
                                'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                          ),
                          CircleLayerOptions(circles: circleMarker),
                          MarkerLayerOptions(markers: markers.asList()),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            });
          },
        ),
      ),
    );
  }
}
