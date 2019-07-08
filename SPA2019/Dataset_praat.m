[ctrl_table,~,~] = xlsread('Database_description.xlsx',2); % 'Control'
[pathology_table,~,~] = xlsread('Database_description.xlsx',1); % 'Pathology'

i = 1;
dataset_praat_h = [];

dataset_praat_h(i).file_name = '002.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.163,0.080,0.098 ,1.695 ,0.949 ,1.053 ,1.210 ]; i = i + 1;

dataset_praat_h(i).file_name = '004.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.655 ,0.378 ,0.419 ,5.546 ,3.049 ,3.668 ,3.853 ]; i = i + 1;

dataset_praat_h(i).file_name = '006.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.864 ,0.547 ,0.430 ,2.510 ,1.503 ,1.265 ,1.627 ]; i = i + 1;

dataset_praat_h(i).file_name = '010.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.200 ,0.089 ,0.119 ,0.921 ,0.460 ,0.540 ,0.908 ]; i = i + 1;

dataset_praat_h(i).file_name = '012.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.175 ,0.098 ,0.105 ,1.113 ,0.624 ,0.700 ,0.810 ]; i = i + 1;

dataset_praat_h(i).file_name = '016.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.398 ,0.232 ,0.219 ,1.821 ,0.994 ,1.134 ,1.345 ]; i = i + 1;

dataset_praat_h(i).file_name = '021.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.729 ,0.451 ,0.412 ,8.065 ,4.776 ,4.799 ,5.306 ]; i = i + 1;

dataset_praat_h(i).file_name = '022.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.520 ,0.290 ,0.298 ,6.248 ,3.503 ,3.634 ,4.662 ]; i = i + 1;

dataset_praat_h(i).file_name = '024.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.402 ,0.204 ,0.225 ,2.026 ,1.059 ,1.307 ,1.670 ]; i = i + 1;

dataset_praat_h(i).file_name = '026.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.195 ,0.104 ,0.111 ,1.361 ,0.656 ,0.787 ,1.177 ]; i = i + 1;

dataset_praat_h(i).file_name = '028.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.641 ,0.366 ,0.353 ,7.076 ,4.354 ,3.956 ,4.705 ]; i = i + 1;

dataset_praat_h(i).file_name = '030.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.731 ,0.394 ,0.395 ,7.396 ,4.522 ,3.982 ,4.759 ]; i = i + 1;

dataset_praat_h(i).file_name = '033.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.332 ,0.173 ,0.202 ,2.259 ,1.036 ,1.415 ,2.172 ]; i = i + 1;

dataset_praat_h(i).file_name = '037.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.422 ,0.207 ,0.240 ,2.900 ,1.328 ,1.695 ,2.742 ]; i = i + 1;

dataset_praat_h(i).file_name = '040.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.550 ,0.300 ,0.302 ,5.766 ,3.244 ,3.246 ,4.325 ]; i = i + 1;

dataset_praat_h(i).file_name = '042.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.177 ,0.068 ,0.086 ,2.045 ,0.853 ,1.222 ,2.250 ]; i = i + 1;

dataset_praat_h(i).file_name = '049.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.197 ,0.098 ,0.103 ,3.317 ,1.897 ,1.754 ,2.437 ]; i = i + 1;

dataset_praat_h(i).file_name = '051.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.385 ,0.202 ,0.197 ,1.980 ,0.958 ,1.079 ,1.605 ]; i = i + 1;

dataset_praat_h(i).file_name = '053.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.484 ,0.201 ,0.282 ,4.279 ,2.190 ,2.651 ,3.364 ]; i = i + 1;

dataset_praat_h(i).file_name = '055.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.265 ,0.146 ,0.164 ,1.569 ,0.778 ,0.919 ,1.361 ]; i = i + 1;

dataset_praat_h(i).file_name = '057.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.636 ,0.378 ,0.361 ,3.726 ,2.070 ,2.082 ,2.875 ]; i = i + 1;

dataset_praat_h(i).file_name = '059.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.333 ,0.194 ,0.195 ,2.835 ,1.649 ,1.707 ,1.825 ]; i = i + 1;

dataset_praat_h(i).file_name = '061.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.806 ,0.475 ,0.488 ,6.115 ,3.309 ,4.013 ,4.510 ]; i = i + 1;

dataset_praat_h(i).file_name = '063.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.414 ,0.163 ,0.185 ,5.471 ,2.662 ,3.382 ,5.018 ]; i = i + 1;

dataset_praat_h(i).file_name = '067.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.331 ,0.188 ,0.187 ,3.244 ,1.776 ,2.026 ,2.495 ]; i = i + 1;

dataset_praat_h(i).file_name = '071.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.479 ,0.271 ,0.297 ,2.258 ,1.116 ,1.444 ,2.085 ]; i = i + 1;

dataset_praat_h(i).file_name = '077.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.349 ,0.204 ,0.210 ,3.167 ,1.700 ,1.924 ,2.433 ]; i = i + 1;

dataset_praat_h(i).file_name = '081.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.262 ,0.134 ,0.148 ,1.906 ,0.927 ,1.117 ,1.839 ]; i = i + 1;

dataset_praat_h(i).file_name = '083.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.489 ,0.313 ,0.235 ,1.280 ,0.686 ,0.791 ,0.948 ]; i = i + 1;

dataset_praat_h(i).file_name = '085.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.395 ,0.235 ,0.214 ,2.938 ,1.718 ,1.704 ,1.811 ]; i = i + 1;

dataset_praat_h(i).file_name = '086.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.512 ,0.304 ,0.292 ,7.803 ,4.050 ,4.964 ,5.250 ]; i = i + 1;

dataset_praat_h(i).file_name = '089.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.193 ,0.091 ,0.098 ,1.744 ,0.856 ,0.941 ,1.646 ]; i = i + 1;

dataset_praat_h(i).file_name = '095.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.950 ,0.604 ,0.504 ,4.401 ,2.630 ,2.400 ,2.904 ]; i = i + 1;

dataset_praat_h(i).file_name = '097.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.441 ,0.263 ,0.257 ,3.423 ,1.983 ,2.019 ,2.352 ]; i = i + 1;

dataset_praat_h(i).file_name = '099.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.134 ,0.072 ,0.079 ,1.073 ,0.513 ,0.636 ,0.971 ]; i = i + 1;

dataset_praat_h(i).file_name = '107.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.521 ,0.285 ,0.315 ,6.905 ,4.069 ,4.175 ,4.725 ]; i = i + 1;

dataset_praat_h(i).file_name = '109.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.378 ,0.240 ,0.185 ,2.979 ,1.802 ,1.573 ,1.899 ];

i = 1;
dataset_praat_p = [];

dataset_praat_p(i).file_name = '008.wav';
dataset_praat_p(i).label = 1;
dataset_praat_p(i).age = pathology_table(i,2);
dataset_praat_p(i).feature_vec = [0.369,0.167,0.215,4.403,2.031,2.627,4.609]; i = i + 1;

dataset_praat_p(i).file_name = '020.wav';
dataset_praat_p(i).label = 1;
dataset_praat_p(i).age = pathology_table(i,2);
dataset_praat_p(i).feature_vec = [0.295,0.130,0.166,2.008,0.855,1.193,2.011]; i = i + 1;

dataset_praat_p(i).file_name = '021.wav';
dataset_praat_p(i).label = 1;
dataset_praat_p(i).age = pathology_table(i,2);
dataset_praat_p(i).feature_vec = [0.258,0.116,0.139,2.089,1.107,1.246,1.759]; i = i + 1;

dataset_praat_p(i).file_name = '022.wav';
dataset_praat_p(i).label = 1;
dataset_praat_p(i).age = pathology_table(i,2);
dataset_praat_p(i).feature_vec = [0.473,0.196,0.253,2.490,1.016,1.549,2.767]; i = i + 1;

dataset_praat_p(i).file_name = '023.wav';
dataset_praat_p(i).label = 1;
dataset_praat_p(i).age = pathology_table(i,2);
dataset_praat_p(i).feature_vec = [0.610,0.241,0.299,2.677,1.093,1.529,2.796]; i = i + 1;

dataset_praat_p(i).file_name = '029.wav';
dataset_praat_p(i).label = 1;
dataset_praat_p(i).age = pathology_table(i,2);
dataset_praat_p(i).feature_vec = [0.478,0.245,0.286,3.301,1.652,1.982,2.971]; i = i + 1;

dataset_praat_p(i).file_name = '031.wav';
dataset_praat_p(i).label = 1;
dataset_praat_p(i).age = 67;
dataset_praat_p(i).feature_vec = [0.501,0.203,0.281,6.505,2.866,4.614,7.286]; i = i + 1;

dataset_praat_p(i).file_name = '035.wav';
dataset_praat_p(i).label = 1;
dataset_praat_p(i).age = pathology_table(i,2);
dataset_praat_p(i).feature_vec = [0.272,0.134,0.155,4.343,1.752,2.470,4.965]; i = i + 1;

dataset_praat_p(i).file_name = '037.wav';
dataset_praat_p(i).label = 1;
dataset_praat_p(i).age = pathology_table(i,2);
dataset_praat_p(i).feature_vec = [0.663,0.397,0.394,5.930,3.367,3.744,4.747]; i = i + 1;

dataset_praat_p(i).file_name = '038.wav';
dataset_praat_p(i).label = 1;
dataset_praat_p(i).age = pathology_table(i,2);
dataset_praat_p(i).feature_vec = [0.267,0.124,0.152,4.655,2.028,2.679,5.038]; i = i + 1;

dataset_praat_p(i).file_name = '039.wav';
dataset_praat_p(i).label = 1;
dataset_praat_p(i).age = pathology_table(i,2);
dataset_praat_p(i).feature_vec = [1.382,0.661,0.864,4.783,2.065,3.112,4.963]; i = i + 1;

dataset_praat_p(i).file_name = '042.wav';
dataset_praat_p(i).label = 1;
dataset_praat_p(i).age = pathology_table(i,2);
dataset_praat_p(i).feature_vec = [1.331,0.771,0.765,7.375,4.089,4.688,5.825]; i = i + 1;

dataset_praat_p(i).file_name = '048.wav';
dataset_praat_p(i).label = 1;
dataset_praat_p(i).age = pathology_table(i,2);
dataset_praat_p(i).feature_vec = [0.751,0.284,0.446,3.278,1.530,2.020,3.131]; i = i + 1;

dataset_praat_p(i).file_name = '058.wav';
dataset_praat_p(i).label = 1;
dataset_praat_p(i).age = pathology_table(i,2);
dataset_praat_p(i).feature_vec = [1.942,0.903,0.801,15.400,7.070,6.055,7.322]; i = i + 1;

