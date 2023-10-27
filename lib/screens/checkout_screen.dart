import 'package:flutter/material.dart';
import 'package:my_ecommerce/database/database.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.location_on_outlined,
                  size: 15,
                  color: MyColors.black,
                ),
                label: const Text(
                  'Delivery Address',
                  style: TextStyle(
                    color: MyColors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.68,
                    child: const Card(
                      color: MyColors.primarywhite,
                      surfaceTintColor: Colors.transparent,
                      child: Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Address :',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color: MyColors.black,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 8),
                                  child: Icon(
                                    Icons.edit_square,
                                    color: Colors.black54,
                                    size: 12,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Text(
                              '216 St Paul\'s Rd, London N1 2LL, UK',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: MyColors.black,
                              ),
                            ),
                            Text('Contact :  +44-784232'),
                            SizedBox(height: 8),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width * 0.23,
                    child: Card(
                      color: MyColors.primarywhite,
                      surfaceTintColor: Colors.transparent,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_circle_outline_outlined,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text(
                '  Shopping List',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 10),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 19),
                      child: Scrollbar(
                        thickness: 10,
                        child: Column(
                          children: [
                            Card(
                              color: MyColors.primarywhite,
                              surfaceTintColor: Colors.transparent,
                              elevation: 3,
                              margin: EdgeInsets.only(
                                right: MediaQuery.of(context).size.width * 0.05,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 150,
                                          width: 155,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.asset(
                                              products[index].image,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 5),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              products[index].productName,
                                              // 'Women’s Casual Wear',
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 13,
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            Row(
                                              children: [
                                                const Text(
                                                  'Variations :  ',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                Container(
                                                  height: 17,
                                                  width: 39,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          width: 0.3),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2)),
                                                  child: const Center(
                                                    child: Text(
                                                      'Black',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(width: 5),
                                                Container(
                                                  height: 17,
                                                  width: 39,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          width: 0.3),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2)),
                                                  child: const Center(
                                                    child: Text(
                                                      'Red',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 10),
                                            const Row(
                                              children: [
                                                Text(
                                                  '4.8 ',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                Icon(Icons.star,
                                                    color: Color(0xFFF7B305),
                                                    size: 11),
                                                Icon(Icons.star,
                                                    color: Color(0xFFF7B305),
                                                    size: 11),
                                                Icon(Icons.star,
                                                    color: Color(0xFFF7B305),
                                                    size: 11),
                                                Icon(Icons.star,
                                                    color: Color(0xFFF7B305),
                                                    size: 11),
                                                Icon(Icons.star_half,
                                                    color: Colors.grey,
                                                    size: 11),
                                              ],
                                            ),
                                            const SizedBox(height: 7),
                                            Row(
                                              children: [
                                                Container(
                                                  height: 29,
                                                  width: 84,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.rectangle,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                    border: Border.all(
                                                      width: 0.3,
                                                    ),
                                                  ),
                                                  child: const Center(
                                                    child: Text(
                                                      "\$ 34.00",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: MyColors.black,
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(width: 12),
                                                const Column(
                                                  children: [
                                                    Text(
                                                      'upto 33% off',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: MyColors.pink,
                                                        fontSize: 8,
                                                      ),
                                                    ),
                                                    Text(
                                                      '\$ 64.00',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: MyColors.grey,
                                                        fontSize: 12,
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough,
                                                        decorationColor:
                                                            MyColors.grey,
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    const Divider(),
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Total Order (1) :',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: MyColors.black,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          "\$ 34.00   ",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: MyColors.black,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                    // Card(
                    //   elevation: 3,
                    //   child: Container(
                    //     width: MediaQuery.of(context).size.width - 40,
                    //     height: 210,
                    //     color: MyColors.primarywhite,
                    //     child: Padding(
                    //       padding: const EdgeInsets.only(left: 12),
                    //       child: Column(
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: [
                    //           const SizedBox(height: 10),
                    //           Row(
                    //             children: [
                    //               SizedBox(
                    //                 height: 150,
                    //                 width: 155,
                    //                 child: ClipRRect(
                    //                   borderRadius: BorderRadius.circular(10),
                    //                   child: Image.asset(
                    //                     favroiteImages[0].image,
                    //                     fit: BoxFit.cover,
                    //                   ),
                    //                 ),
                    //               ),
                    //               const SizedBox(width: 5),
                    //               Column(
                    //                 crossAxisAlignment: CrossAxisAlignment.start,
                    //                 children: [
                    //                   const Text(
                    //                     'Men’s Jacket',
                    //                     style: TextStyle(
                    //                       fontWeight: FontWeight.w600,
                    //                       fontSize: 13,
                    //                     ),
                    //                   ),
                    //                   const SizedBox(height: 8),
                    //                   Row(
                    //                     children: [
                    //                       const Text(
                    //                         'Variations :  ',
                    //                         style: TextStyle(
                    //                           fontWeight: FontWeight.w500,
                    //                           fontSize: 12,
                    //                         ),
                    //                       ),
                    //                       Container(
                    //                         height: 17,
                    //                         width: 39,
                    //                         decoration: BoxDecoration(
                    //                             border: Border.all(width: 0.3),
                    //                             borderRadius:
                    //                                 BorderRadius.circular(2)),
                    //                         child: const Center(
                    //                           child: Text(
                    //                             'Green',
                    //                             style: TextStyle(
                    //                               fontWeight: FontWeight.w500,
                    //                               fontSize: 12,
                    //                             ),
                    //                           ),
                    //                         ),
                    //                       ),
                    //                       const SizedBox(width: 5),
                    //                       Container(
                    //                         height: 17,
                    //                         width: 39,
                    //                         decoration: BoxDecoration(
                    //                             border: Border.all(width: 0.3),
                    //                             borderRadius:
                    //                                 BorderRadius.circular(2)),
                    //                         child: const Center(
                    //                           child: Text(
                    //                             'Grey',
                    //                             style: TextStyle(
                    //                               fontWeight: FontWeight.w500,
                    //                               fontSize: 12,
                    //                             ),
                    //                           ),
                    //                         ),
                    //                       ),
                    //                     ],
                    //                   ),
                    //                   const SizedBox(height: 10),
                    //                   const Row(
                    //                     children: [
                    //                       Text(
                    //                         '4.7 ',
                    //                         style: TextStyle(
                    //                           fontWeight: FontWeight.w500,
                    //                           fontSize: 12,
                    //                         ),
                    //                       ),
                    //                       Icon(Icons.star,
                    //                           color: Color(0xFFF7B305), size: 11),
                    //                       Icon(Icons.star,
                    //                           color: Color(0xFFF7B305), size: 11),
                    //                       Icon(Icons.star,
                    //                           color: Color(0xFFF7B305), size: 11),
                    //                       Icon(Icons.star,
                    //                           color: Color(0xFFF7B305), size: 11),
                    //                       Icon(Icons.star_half,
                    //                           color: Colors.grey, size: 11),
                    //                     ],
                    //                   ),
                    //                   const SizedBox(height: 7),
                    //                   Row(
                    //                     children: [
                    //                       Container(
                    //                         height: 29,
                    //                         width: 84,
                    //                         decoration: BoxDecoration(
                    //                           shape: BoxShape.rectangle,
                    //                           borderRadius:
                    //                               BorderRadius.circular(4),
                    //                           border: Border.all(
                    //                             width: 0.3,
                    //                           ),
                    //                         ),
                    //                         child: const Center(
                    //                           child: Text(
                    //                             "\$ 45.00",
                    //                             style: TextStyle(
                    //                               fontWeight: FontWeight.w600,
                    //                               color: MyColors.black,
                    //                               fontSize: 16,
                    //                             ),
                    //                           ),
                    //                         ),
                    //                       ),
                    //                       const SizedBox(width: 12),
                    //                       const Column(
                    //                         children: [
                    //                           Text(
                    //                             'upto 28% off',
                    //                             style: TextStyle(
                    //                               fontWeight: FontWeight.w500,
                    //                               color: MyColors.pink,
                    //                               fontSize: 8,
                    //                             ),
                    //                           ),
                    //                           Text(
                    //                             '\$ 64.00',
                    //                             style: TextStyle(
                    //                               fontWeight: FontWeight.w500,
                    //                               color: MyColors.grey,
                    //                               fontSize: 12,
                    //                               decoration:
                    //                                   TextDecoration.lineThrough,
                    //                               decorationColor: MyColors.grey,
                    //                             ),
                    //                           ),
                    //                         ],
                    //                       )
                    //                     ],
                    //                   ),
                    //                 ],
                    //               )
                    //             ],
                    //           ),
                    //           const SizedBox(height: 5),
                    //           const Divider(),
                    //           const Row(
                    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //             children: [
                    //               Text(
                    //                 'Total Order (1) :',
                    //                 style: TextStyle(
                    //                   fontWeight: FontWeight.w500,
                    //                   color: MyColors.black,
                    //                   fontSize: 12,
                    //                 ),
                    //               ),
                    //               Text(
                    //                 "\$ 45.00   ",
                    //                 style: TextStyle(
                    //                   fontWeight: FontWeight.w600,
                    //                   color: MyColors.black,
                    //                   fontSize: 12,
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // Card(
                    //   elevation: 3,
                    //   child: Container(
                    //     width: MediaQuery.of(context).size.width - 40,
                    //     height: 210,
                    //     color: MyColors.primarywhite,
                    //     child: Padding(
                    //       padding: const EdgeInsets.only(left: 12),
                    //       child: Column(
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: [
                    //           const SizedBox(height: 10),
                    //           Row(
                    //             children: [
                    //               SizedBox(
                    //                 height: 150,
                    //                 width: 155,
                    //                 child: ClipRRect(
                    //                   borderRadius: BorderRadius.circular(10),
                    //                   child: Image.asset(
                    //                     favroiteImages[0].image,
                    //                     fit: BoxFit.cover,
                    //                   ),
                    //                 ),
                    //               ),
                    //               const SizedBox(width: 5),
                    //               Column(
                    //                 crossAxisAlignment: CrossAxisAlignment.start,
                    //                 children: [
                    //                   const Text(
                    //                     'Men’s Jacket',
                    //                     style: TextStyle(
                    //                       fontWeight: FontWeight.w600,
                    //                       fontSize: 13,
                    //                     ),
                    //                   ),
                    //                   const SizedBox(height: 8),
                    //                   Row(
                    //                     children: [
                    //                       const Text(
                    //                         'Variations :  ',
                    //                         style: TextStyle(
                    //                           fontWeight: FontWeight.w500,
                    //                           fontSize: 12,
                    //                         ),
                    //                       ),
                    //                       Container(
                    //                         height: 17,
                    //                         width: 39,
                    //                         decoration: BoxDecoration(
                    //                             border: Border.all(width: 0.3),
                    //                             borderRadius:
                    //                                 BorderRadius.circular(2)),
                    //                         child: const Center(
                    //                           child: Text(
                    //                             'Green',
                    //                             style: TextStyle(
                    //                               fontWeight: FontWeight.w500,
                    //                               fontSize: 12,
                    //                             ),
                    //                           ),
                    //                         ),
                    //                       ),
                    //                       const SizedBox(width: 5),
                    //                       Container(
                    //                         height: 17,
                    //                         width: 39,
                    //                         decoration: BoxDecoration(
                    //                             border: Border.all(width: 0.3),
                    //                             borderRadius:
                    //                                 BorderRadius.circular(2)),
                    //                         child: const Center(
                    //                           child: Text(
                    //                             'Grey',
                    //                             style: TextStyle(
                    //                               fontWeight: FontWeight.w500,
                    //                               fontSize: 12,
                    //                             ),
                    //                           ),
                    //                         ),
                    //                       ),
                    //                     ],
                    //                   ),
                    //                   const SizedBox(height: 10),
                    //                   const Row(
                    //                     children: [
                    //                       Text(
                    //                         '4.7 ',
                    //                         style: TextStyle(
                    //                           fontWeight: FontWeight.w500,
                    //                           fontSize: 12,
                    //                         ),
                    //                       ),
                    //                       Icon(Icons.star,
                    //                           color: Color(0xFFF7B305), size: 11),
                    //                       Icon(Icons.star,
                    //                           color: Color(0xFFF7B305), size: 11),
                    //                       Icon(Icons.star,
                    //                           color: Color(0xFFF7B305), size: 11),
                    //                       Icon(Icons.star,
                    //                           color: Color(0xFFF7B305), size: 11),
                    //                       Icon(Icons.star_half,
                    //                           color: Colors.grey, size: 11),
                    //                     ],
                    //                   ),
                    //                   const SizedBox(height: 7),
                    //                   Row(
                    //                     children: [
                    //                       Container(
                    //                         height: 29,
                    //                         width: 84,
                    //                         decoration: BoxDecoration(
                    //                           shape: BoxShape.rectangle,
                    //                           borderRadius:
                    //                               BorderRadius.circular(4),
                    //                           border: Border.all(
                    //                             width: 0.3,
                    //                           ),
                    //                         ),
                    //                         child: const Center(
                    //                           child: Text(
                    //                             "\$ 45.00",
                    //                             style: TextStyle(
                    //                               fontWeight: FontWeight.w600,
                    //                               color: MyColors.black,
                    //                               fontSize: 16,
                    //                             ),
                    //                           ),
                    //                         ),
                    //                       ),
                    //                       const SizedBox(width: 12),
                    //                       const Column(
                    //                         children: [
                    //                           Text(
                    //                             'upto 28% off',
                    //                             style: TextStyle(
                    //                               fontWeight: FontWeight.w500,
                    //                               color: MyColors.pink,
                    //                               fontSize: 8,
                    //                             ),
                    //                           ),
                    //                           Text(
                    //                             '\$ 64.00',
                    //                             style: TextStyle(
                    //                               fontWeight: FontWeight.w500,
                    //                               color: MyColors.grey,
                    //                               fontSize: 12,
                    //                               decoration:
                    //                                   TextDecoration.lineThrough,
                    //                               decorationColor: MyColors.grey,
                    //                             ),
                    //                           ),
                    //                         ],
                    //                       )
                    //                     ],
                    //                   ),
                    //                 ],
                    //               )
                    //             ],
                    //           ),
                    //           const SizedBox(height: 5),
                    //           const Divider(),
                    //           const Row(
                    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //             children: [
                    //               Text(
                    //                 'Total Order (1) :',
                    //                 style: TextStyle(
                    //                   fontWeight: FontWeight.w500,
                    //                   color: MyColors.black,
                    //                   fontSize: 12,
                    //                 ),
                    //               ),
                    //               Text(
                    //                 "\$ 45.00   ",
                    //                 style: TextStyle(
                    //                   fontWeight: FontWeight.w600,
                    //                   color: MyColors.black,
                    //                   fontSize: 12,
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  })
            ],
          ),
        ),
      ),
    );
  }
}
