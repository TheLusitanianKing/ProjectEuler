(*
Author : Alexandre Gomes
Version : 1.0
Date : 08/01/2014
Updated : 02/05/2014
Description : The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1+2+3+4+5+6+7 = 28. The first ten terms would be : 1,3,6,10,15,21,28,36,45,55,... Let us list the factors of the first seven triangle numbers : 1:1; 3:1,3; 6:1,2,3,6; 10:1,2,5,10; 15:1,3,5,15; 21:1,3,7,21; 28:1,2,4,7,14,28; We can see that 28 is the first triangle number to have over five divisors. What is the value of the first triangle number to have over five hundred divisors ?
*)

(* Naive version *)
let count_divisors x =
	let rec local acc i = match i with
	| 0 -> acc
	| 1 -> (acc+1)
	| _ -> if (x mod i = 0) then local (acc+1) (i-(i/2)) else local acc (i-1)
	in local 1 (x/2);;

(* Find naively the first triangle over x divisors *)
let f x =
	let rec local num i = match num,i with
	| num,i when (count_divisors num > x) -> num
	| _ -> local (num+i) (i+1)
	in local 1 2;;

(*f 500;;*)
