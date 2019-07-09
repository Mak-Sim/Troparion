[ctrl_table,~,~] = xlsread('Database_description.xlsx',2); % 'Control'
[pathology_table,~,~] = xlsread('Database_description.xlsx',1); % 'Pathology'

i = 1;
dataset_praat_h = [];

dataset_praat_h(i).file_name = '002.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.163 ,0.080 ,0.098 ,1.708 ,0.955 ,1.051 ,1.210 ]; i = i + 1;
 
dataset_praat_h(i).file_name = '004.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.668 ,0.388 ,0.406 ,5.459 ,3.002 ,3.571 ,3.883 ]; i = i + 1;
 
dataset_praat_h(i).file_name = '006.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.504 ,0.271 ,0.244 ,1.741 ,0.881 ,0.935 ,1.515 ]; i = i + 1;
 
dataset_praat_h(i).file_name = '010.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.200 ,0.089 ,0.119 ,0.921 ,0.460 ,0.540 ,0.908 ]; i = i + 1;
 
dataset_praat_h(i).file_name = '012.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.175 ,0.098 ,0.105 ,1.114 ,0.623 ,0.699 ,0.810 ]; i = i + 1;
 
dataset_praat_h(i).file_name = '016.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.398 ,0.232 ,0.219 ,1.821 ,0.994 ,1.134 ,1.345 ]; i = i + 1;
 
dataset_praat_h(i).file_name = '021.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.722 ,0.440 ,0.408 ,7.922 ,4.624 ,4.749 ,5.277 ]; i = i + 1;
 
dataset_praat_h(i).file_name = '022.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.520 ,0.290 ,0.298 ,6.233 ,3.508 ,3.623 ,4.664 ]; i = i + 1;
 
dataset_praat_h(i).file_name = '024.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.403 ,0.203 ,0.226 ,2.024 ,1.068 ,1.327 ,1.681 ]; i = i + 1;
 
dataset_praat_h(i).file_name = '026.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.195 ,0.104 ,0.111 ,1.361 ,0.656 ,0.787 ,1.177 ]; i = i + 1;
 
dataset_praat_h(i).file_name = '028.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.705 ,0.423 ,0.388 ,6.908 ,4.287 ,3.853 ,4.469 ]; i = i + 1;
 
dataset_praat_h(i).file_name = '030.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.924 ,0.517 ,0.516 ,7.055 ,4.110 ,4.054 ,5.126 ]; i = i + 1;
 
dataset_praat_h(i).file_name = '033.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.674 ,0.358 ,0.395 ,4.581 ,2.261 ,2.665 ,3.293 ]; i = i + 1;
 
dataset_praat_h(i).file_name = '037.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.422 ,0.207 ,0.240 ,2.900 ,1.328 ,1.695 ,2.742 ]; i = i + 1;
 
dataset_praat_h(i).file_name = '040.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.531 ,0.289 ,0.309 ,3.541 ,1.870 ,2.043 ,3.117 ]; i = i + 1;
 
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
dataset_praat_h(i).feature_vec = [0.388 ,0.204 ,0.198 ,1.975 ,0.961 ,1.075 ,1.607 ]; i = i + 1;
 
dataset_praat_h(i).file_name = '053.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.484 ,0.201 ,0.282 ,4.280 ,2.190 ,2.652 ,3.364 ]; i = i + 1;
 
dataset_praat_h(i).file_name = '055.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.264 ,0.145 ,0.162 ,1.565 ,0.779 ,0.920 ,1.357 ]; i = i + 1;
 
dataset_praat_h(i).file_name = '057.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [1.310 ,0.843 ,0.607 ,3.720 ,2.089 ,2.115 ,2.808 ]; i = i + 1;
 
dataset_praat_h(i).file_name = '059.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.333 ,0.194 ,0.195 ,2.835 ,1.648 ,1.707 ,1.823 ]; i = i + 1;
 
dataset_praat_h(i).file_name = '061.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.807 ,0.475 ,0.489 ,6.101 ,3.305 ,4.017 ,4.508 ]; i = i + 1;
 
dataset_praat_h(i).file_name = '063.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.335 ,0.161 ,0.187 ,3.130 ,1.547 ,1.887 ,2.826 ]; i = i + 1;
 
dataset_praat_h(i).file_name = '065.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [1.567 ,0.917 ,0.821 ,8.436 ,4.806 ,5.038 ,5.789 ]; i = i + 1;
 
dataset_praat_h(i).file_name = '067.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.331 ,0.188 ,0.187 ,3.252 ,1.779 ,2.028 ,2.495 ]; i = i + 1;
 
dataset_praat_h(i).file_name = '071.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.480 ,0.271 ,0.297 ,2.260 ,1.118 ,1.445 ,2.085 ]; i = i + 1;
 
dataset_praat_h(i).file_name = '077.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.349 ,0.204 ,0.210 ,3.181 ,1.708 ,1.922 ,2.431 ]; i = i + 1;
 
dataset_praat_h(i).file_name = '079.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [1.883 ,1.091 ,0.786 ,5.950 ,3.245 ,3.103 ,4.060 ]; i = i + 1;
 
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
dataset_praat_h(i).feature_vec = [0.395 ,0.236 ,0.214 ,2.939 ,1.719 ,1.706 ,1.812 ]; i = i + 1;
 
dataset_praat_h(i).file_name = '086.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.523 ,0.320 ,0.298 ,6.469 ,3.638 ,4.411 ,4.544 ]; i = i + 1;
 
dataset_praat_h(i).file_name = '089.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.193 ,0.091 ,0.098 ,1.742 ,0.856 ,0.937 ,1.641 ]; i = i + 1;
 
dataset_praat_h(i).file_name = '095.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.950 ,0.604 ,0.504 ,4.401 ,2.630 ,2.400 ,2.904 ]; i = i + 1;
 
dataset_praat_h(i).file_name = '097.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.441 ,0.263 ,0.257 ,3.423 ,1.983 ,2.019 ,2.351 ]; i = i + 1;
 
dataset_praat_h(i).file_name = '099.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.134 ,0.072 ,0.079 ,1.074 ,0.513 ,0.636 ,0.972 ]; i = i + 1;
 
dataset_praat_h(i).file_name = '107.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.521 ,0.285 ,0.315 ,6.906 ,4.069 ,4.175 ,4.725 ]; i = i + 1;
 
dataset_praat_h(i).file_name = '109.wav';
dataset_praat_h(i).label = 1;
dataset_praat_h(i).age = ctrl_table(i,2);
dataset_praat_h(i).feature_vec = [0.378 ,0.240 ,0.185 ,2.979 ,1.802 ,1.573 ,1.899 ]; i = i + 1;
 

i = 1;
dataset_praat_p = [];

dataset_praat_p(i).file_name = '008.wav';
dataset_praat_p(i).label = 1;
dataset_praat_p(i).age = pathology_table(i,2);
dataset_praat_p(i).feature_vec = [0.370 ,0.168 ,0.215 ,4.395 ,2.029 ,2.627 ,4.617 ]; i = i + 1;
 
dataset_praat_p(i).file_name = '020.wav';
dataset_praat_p(i).label = 1;
dataset_praat_p(i).age = pathology_table(i,2);
dataset_praat_p(i).feature_vec = [0.295 ,0.130 ,0.166 ,2.008 ,0.855 ,1.193 ,2.011 ]; i = i + 1;
 
dataset_praat_p(i).file_name = '021.wav';
dataset_praat_p(i).label = 1;
dataset_praat_p(i).age = pathology_table(i,2);
dataset_praat_p(i).feature_vec = [0.258 ,0.116 ,0.139 ,2.088 ,1.107 ,1.245 ,1.759 ]; i = i + 1;
 
dataset_praat_p(i).file_name = '022.wav';
dataset_praat_p(i).label = 1;
dataset_praat_p(i).age = pathology_table(i,2);
dataset_praat_p(i).feature_vec = [0.478 ,0.197 ,0.254 ,2.506 ,1.027 ,1.544 ,2.762 ]; i = i + 1;
 
dataset_praat_p(i).file_name = '023.wav';
dataset_praat_p(i).label = 1;
dataset_praat_p(i).age = pathology_table(i,2);
dataset_praat_p(i).feature_vec = [0.610 ,0.241 ,0.299 ,2.677 ,1.093 ,1.529 ,2.796 ]; i = i + 1;
 
dataset_praat_p(i).file_name = '029.wav';
dataset_praat_p(i).label = 1;
dataset_praat_p(i).age = pathology_table(i,2);
dataset_praat_p(i).feature_vec = [0.478 ,0.245 ,0.286 ,3.301 ,1.652 ,1.982 ,2.971 ]; i = i + 1;
 
dataset_praat_p(i).file_name = '031.wav';
dataset_praat_p(i).label = 1;
dataset_praat_p(i).age = pathology_table(i,2);
dataset_praat_p(i).feature_vec = [0.501 ,0.203 ,0.281 ,6.505 ,2.866 ,4.614 ,7.285 ]; i = i + 1;
 
dataset_praat_p(i).file_name = '035.wav';
dataset_praat_p(i).label = 1;
dataset_praat_p(i).age = pathology_table(i,2);
dataset_praat_p(i).feature_vec = [0.272 ,0.134 ,0.155 ,4.343 ,1.752 ,2.470 ,4.965 ]; i = i + 1;
 
dataset_praat_p(i).file_name = '037.wav';
dataset_praat_p(i).label = 1;
dataset_praat_p(i).age = pathology_table(i,2);
dataset_praat_p(i).feature_vec = [0.658 ,0.393 ,0.392 ,5.871 ,3.342 ,3.680 ,4.657 ]; i = i + 1;
 
dataset_praat_p(i).file_name = '038.wav';
dataset_praat_p(i).label = 1;
dataset_praat_p(i).age = pathology_table(i,2);
dataset_praat_p(i).feature_vec = [0.267 ,0.124 ,0.152 ,4.658 ,2.030 ,2.681 ,5.034 ]; i = i + 1;
 
dataset_praat_p(i).file_name = '039.wav';
dataset_praat_p(i).label = 1;
dataset_praat_p(i).age = pathology_table(i,2);
dataset_praat_p(i).feature_vec = [1.387 ,0.663 ,0.865 ,4.768 ,2.058 ,3.107 ,4.946 ]; i = i + 1;
 
dataset_praat_p(i).file_name = '042.wav';
dataset_praat_p(i).label = 1;
dataset_praat_p(i).age = pathology_table(i,2);
dataset_praat_p(i).feature_vec = [1.300 ,0.769 ,0.753 ,7.480 ,4.155 ,4.761 ,5.954 ]; i = i + 1;
 
dataset_praat_p(i).file_name = '048.wav';
dataset_praat_p(i).label = 1;
dataset_praat_p(i).age = pathology_table(i,2);
dataset_praat_p(i).feature_vec = [0.751 ,0.284 ,0.446 ,3.277 ,1.530 ,2.019 ,3.131 ]; i = i + 1;
 
dataset_praat_p(i).file_name = '058.wav';
dataset_praat_p(i).label = 1;
dataset_praat_p(i).age = pathology_table(i,2);
dataset_praat_p(i).feature_vec = [1.525 ,0.899 ,0.720 ,13.137 ,6.090 ,5.209 ,6.242 ]; i = i + 1;
 
dataset_praat_p(i).file_name = '068.wav';
dataset_praat_p(i).label = 1;
dataset_praat_p(i).age = pathology_table(i,2);
dataset_praat_p(i).feature_vec = [0.531 ,0.244 ,0.311 ,4.566 ,2.650 ,2.310 ,3.285 ]; i = i + 1;
 