// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;



 contract get_median_of_two_stored_array {



 uint [] nums3 = new uint [](0);

 uint [3] nums1 =[1,1,1];

 uint [3] nums2 =[1,1,1];

 uint m = nums1.length;

 uint n = nums2.length;

 uint l = m+n;

 // collect numbers from two arrays to the third array for calculate the median number

 function collect_numbers_in_one_array() public returns(uint){

 require(m>1 && n>1);  

 if((m>1 && n>1)){

 for(uint i; i<m; i++) {

 nums3.push(nums1[i]);   

 }

 for(uint j ; j<n ; j++) {

 nums3.push(nums2[j]);

 }

 }

 return nums3[3]; // add numbers from two arrays to the third array for calculate the median number

 }

  // check if numbers are equal
 function check_equal_numbers() public view returns(uint){

 uint g;

 uint h;

 for( g=0 ; g<m ; g++){

 for( h=1 ; h<n-1 ; h++) {

 if(nums3[g]==nums3[h]){

 return nums3[1];  // is the mediam number in this case

 }

 else{

 return 0;

 }
 }
 }
 }

  //check if numbers arranged in increasing or decreasing order
 function check_arranged_numbers() public view returns(uint){

 uint x=1;

 for(uint i=0 ; i<l ; i++){

 for(uint j=1 ; j<l-1; j++){

 if(((nums3[i]+ x)==nums3[j])||(nums3[i]-x)==nums3[j]){

 return ((nums3[l-1]+nums3[0])/2);   // is the mediam number in this case


 }

 else {

 return 0;

 }
 }
 }
 }
 }