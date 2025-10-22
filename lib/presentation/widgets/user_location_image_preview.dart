import 'package:api_consume_and_persistence/domain/model/random_user.dart';
import 'package:api_consume_and_persistence/domain/repositories/google_location_repository.dart';
import 'package:api_consume_and_persistence/util/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class UserLocationImagePreview extends StatefulWidget {
  const UserLocationImagePreview({super.key, required this.user});

  final RandomUser user;

  @override
  State<UserLocationImagePreview> createState() =>
      _UserLocationImagePreviewState();
}

class _UserLocationImagePreviewState extends State<UserLocationImagePreview> {
  final GoogleLocationRepository _repository = Get.find();
  late final Future<String> getImageUrlPreviewFuture;

  @override
  void initState() {
    super.initState();
    getImageUrlPreviewFuture = getImageUrlPreview();
  }

  Future<String> getImageUrlPreview() {
    return _repository.getStaticImageFromAddress(
      street: widget.user.location.street.name,
      number: widget.user.location.street.number.toString(),
      city: widget.user.location.city,
      country: widget.user.location.country,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppConstants.locationImageHeight,
      child: FutureBuilder(
        future: getImageUrlPreviewFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Image.network(snapshot.data!, fit: BoxFit.fitHeight);
          }
            return Shimmer.fromColors(
              child: Container(
                color: Colors.grey,
                width: double.infinity,
                height: AppConstants.locationImageHeight,
              ),
            baseColor: Colors.grey[400]!,
            highlightColor: Colors.grey[200]!,
          );
        },
      ),
    );
  }
}
