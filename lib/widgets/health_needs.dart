// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class HealthNeeds extends StatelessWidget {
  const HealthNeeds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<CustomIcon> customIcons = [
      CustomIcon(name: "Surtek", icon: 'assets/surtek.jpg'),
      CustomIcon(name: "Milwaukee", icon: 'assets/milwaukee.jpg'),
      CustomIcon(name: "Bosh", icon: 'assets/bosh.png'),
      CustomIcon(name: "Truper", icon: 'assets/truper.png'),
    ];
    List<CustomIcon> healthNeeds = [
      CustomIcon(name: "Surtek", icon: 'assets/surtek.jpg'),
      CustomIcon(name: "Milwaukee", icon: 'assets/milwaukee.jpg'),
      CustomIcon(name: "Bosh", icon: 'assets/bosh.png'),
      CustomIcon(name: "Truper", icon: 'assets/truper.png'),
    ];
    List<CustomIcon> specialisedCared = [
      CustomIcon(name: "Surtek", icon: 'assets/surtek.jpg'),
      CustomIcon(name: "Milwaukee Care", icon: 'assets/milwaukee.jpg'),
      CustomIcon(name: "Bosh", icon: 'assets/bosh.png'),
      CustomIcon(name: "Truper", icon: 'assets/truper.png'),
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(customIcons.length, (index) {
        return Column(
          children: [
            InkWell(
              onTap: () {
                if (index == customIcons.length - 1) {
                  showModalBottomSheet(
                    context: context,
                    showDragHandle: true,
                    builder: (context) {
                      return Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        height: 350,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // HEALTH NEEDS SECTION
                            Text(
                              "Health Needs",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            const SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                healthNeeds.length,
                                (index) {
                                  return Column(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        borderRadius: BorderRadius.circular(90),
                                        child: Container(
                                          width: 60,
                                          height: 60,
                                          padding: const EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primaryContainer
                                                .withOpacity(0.4),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            healthNeeds[index].icon,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      Text(healthNeeds[index].name)
                                    ],
                                  );
                                },
                              ),
                            ),
                            SizedBox(height: 30),
                            // SPECIALISED CARE SECTION

                            Text(
                              "Specialised Care",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            const SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                specialisedCared.length,
                                (index) {
                                  return Column(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        borderRadius: BorderRadius.circular(90),
                                        child: Container(
                                          width: 60,
                                          height: 60,
                                          padding: const EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primaryContainer
                                                .withOpacity(0.4),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            specialisedCared[index].icon,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      Text(specialisedCared[index].name)
                                    ],
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  );
                }
              },
              borderRadius: BorderRadius.circular(90),
              child: Container(
                width: 60,
                height: 60,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(0.4),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  customIcons[index].icon,
                ),
              ),
            ),
            const SizedBox(height: 6),
            Text(customIcons[index].name)
          ],
        );
      }),
    );
  }
}

class CustomIcon {
  final String name;
  final String icon;

  CustomIcon({
    required this.name,
    required this.icon,
  });
}
