-- Update creature_template SpeedRun & SpeedWalk
-- TODO: There are still templates that require adjusting

UPDATE creature_template SET speedrun = 1.14286 WHERE entry IN (6, 30, 38, 40, 43, 46, 60, 69, 79, 80, 92, 94, 97, 103, 113, 116, 118,
171, 257, 285, 299, 327, 330, 349, 385, 390, 467, 471, 473, 474, 475, 476, 478, 480, 524, 525, 583, 620, 704, 705, 706, 707, 708, 721,
724, 732, 808, 822, 880, 881, 883, 890, 946, 1115, 1116, 1120, 1121, 1122, 1123, 1124, 1125, 1126, 1127, 1128, 1129, 1131, 1134, 1135,
1137, 1138, 1195, 1196, 1199, 1201, 1211, 1352, 1397, 1412, 1419, 1420, 1501, 1504, 1506, 1508, 1509, 1512, 1513, 1525, 1526, 1529,
1536, 1537, 1547, 1548, 1549, 1553, 1554, 1662, 1689, 1718, 1890, 1916, 1917, 1919, 1922, 1933, 1936, 1941, 1984, 1985, 1986, 1988,
1989, 1998, 1999, 2000, 2015, 2017, 2018, 2031, 2032, 2098, 2110, 2442, 2620, 2914, 2949, 2950, 2964, 2969, 2970, 2971, 2972, 2975,
2976, 2977, 2978, 2979, 3035, 3115, 3116, 3117, 3118, 3122, 3123, 3124, 3125, 3126, 3127, 3130, 3195, 3197, 3281, 3300, 3444, 3566,
3680, 3797, 3835, 4068, 4075, 4166, 4196, 4729, 4953, 5951, 6016, 6271, 6368, 6653, 6927);

UPDATE creature_template SET speedwalk = 1 WHERE entry IN (98, 100, 117, 124, 329, 426, 431, 432, 446, 448, 462, 472, 478, 507, 568, 
572, 584, 603, 659, 680, 712, 723, 818, 852, 947, 954, 1007, 1012, 1014, 1037, 1061, 1063, 1098, 1112, 1130, 1164, 1167, 1178, 1179,
1180, 1181, 1183, 1189, 1192, 1210, 1225, 1260, 1271, 1388, 1393, 1398, 1399, 1425, 1475, 1494, 1511, 1514, 1516, 1533, 1720, 1748,
1749, 1764, 1800, 1801, 1837, 1838, 1839, 1840, 1841, 1843, 1844, 1851, 1853, 1885, 1896, 1939, 1943, 1944, 1977, 1993, 2012, 2013,
2014, 2015, 2017, 2018, 2021, 2039, 2158, 2159, 2166, 2225, 2258, 2283, 2302, 2359, 2433, 2453, 2477, 2478, 2592, 2598, 2601, 2603,
2604, 2605, 2606, 2673, 2674, 2678, 2707, 2735, 2744, 2748, 2749, 2751, 2753, 2754, 2755, 2763, 2773, 2850, 2876, 2880, 2919, 2937,
2950, 2964, 2965, 2983, 3094, 3253, 3295, 3343, 3395, 3475, 3519, 3524, 3529, 3531, 3533, 3535, 3586, 3625, 3636, 3637, 3640, 3652,
3653, 3654, 3669, 3670, 3671, 3672, 3673, 3674, 3678, 3679, 3722, 3773, 3792, 3836, 3840, 3872, 3939, 4022, 4025, 4026, 4027, 4030,
4034, 4035, 4113, 4120, 4242, 4253, 4339, 4355, 4358, 4360, 4391, 4392, 4398, 4399, 4400, 4402, 4405, 4490, 4500, 4501, 4502, 4503,
4528, 4661, 4729, 4787, 4791, 4798, 4799, 4805, 4809, 4810, 4811, 4812, 4813, 4814, 4815, 4818, 4819, 4820, 4821, 4822, 4823, 4824,
4825, 4827, 4829, 4830, 4831, 4832, 4847, 4848, 4849, 4850, 4852, 4853, 4854, 4855, 4857, 4860, 4863, 4879, 4883, 4884, 4887, 4926,
4947, 4978, 5048, 5053, 5055, 5056, 5087, 5089, 5118, 5232, 5234, 5253, 5258, 5345, 5346, 5347, 5352, 5354, 5399, 5400, 5402, 5407,
5432, 5465, 5470, 5471, 5473, 5474, 5475, 5648, 5649, 5650, 5666, 5755, 5756, 5761, 5762, 5764, 5775, 5785, 5791, 5809, 5827, 5828,
5835, 5848, 5851, 5864, 5872, 5912, 5916, 5934, 5935, 5937, 5946, 5947, 5948, 5949, 5981, 6013, 6070, 6109, 6113, 6118, 6209, 6226,
6228, 6229, 6243, 6488, 6489, 6490, 6498, 6499, 6505, 6506, 6507, 6508, 6567, 6577, 6646, 6647, 6648, 6649, 6650, 6652, 6666, 6906,
6908, 6910, 7011, 7012, 7015, 7022, 7030, 7031, 7032, 7033, 7034, 7035, 7076, 7077, 7091, 7135, 7170, 7206, 7228, 7234, 7246, 7247,
7267, 7268, 7272, 7274, 7275, 7276, 7286, 7290, 7291, 7309, 7319, 7320, 7321, 7340, 7349, 7351, 7354, 7355, 7356, 7357, 7364, 7369,
7371, 7372, 7379, 7396, 7397, 7401, 7411, 7604, 7605, 7606, 7607, 7608, 7729, 7732, 7734, 7735, 7750, 7772, 7789, 7791, 7795, 7796,
7797, 7805, 7808, 7809, 7848, 7899, 7901, 7902, 8017, 8095, 8120, 8156, 8199, 8201, 8202, 8203, 8204, 8207, 8208, 8217, 8218, 8219,
8283, 8297, 8387, 8388, 8389, 8391, 8392, 8504, 8581, 8608, 8616, 8876, 8877, 8886, 8925, 8926, 9025, 9027, 9029, 9030, 9031, 9032,
9196, 9197, 9198, 9199, 9200, 9201, 9216, 9217, 9218, 9219, 9237, 9239, 9240, 9241, 9259, 9260, 9261, 9263, 9264, 9265, 9266, 9267,
9268, 9269, 9396, 9437, 9438, 9439, 9441, 9442, 9443, 9445, 9456, 9477, 9521, 9522, 9524, 9527, 9538, 9539, 9546, 9547, 9554, 9568,
9596, 9602, 9604, 9605, 9621, 9677, 9682, 9716, 9717, 9736, 9876, 10040, 10041, 10076, 10077, 10078, 10177, 10196, 19221, 10261,
10263);