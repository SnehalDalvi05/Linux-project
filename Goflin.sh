echo " "
echo "=============== Welcome to goFlyin Tours & Travel ==============="
echo  "                          ---book your Fondest Memory here!" 
echo " "
while true; 
do
echo "Select any option to proceed further:
1. Signup
2. Login
3. Destination
4. About Company
5. Feedback
6. Cancellation
7. Exit"
read optn

declare -A users
Signup(){
echo "--------------- SIGN-UP ---------------"
echo " Please enter Username: "
read username
echo " Please enter Password: "
read -s password
echo " Please enter Mobile number: "
read mob_no
echo " Please enter Email_id: "
read e_id
echo " "
users["$username"]="$password"
echo "--> User Account created successfully"
echo "--------------------------------------"
echo " "
}

Login(){
echo "--------------- LOG-IN ---------------"
echo "Please enter Username: "
read username
echo "Please enter Password: "
read -s password
echo " "
stored_pwd=${users["$username"]}
if [ "$stored_pwd" == "$password" ]
 then
    echo "--> Logged in Succesfully"
echo "--------------------------------------"
    echo " "
else
    echo "--> Invalid username or Password"
echo "--------------------------------------"
    echo " "
fi
}

payment(){
echo "------------------------ PAYMENT DETAILS -------------------------
1.UPI
2. Debit or Credit card"
read pay
     case $pay in
      1) echo "Please enter Upi Id to proceed: "
         read up
         echo "Please enter your pin number: "
         read -s pin
          echo "--> Payment Succesfully"
          echo " ";;
      2) echo "Please enter account holder's name: "
         read ac_hol
         echo "Please enter card number: "
         read c_no
         echo "Please enter CVV Number: "
         read cvv
         echo "--> Payment Successfull"

         echo " ";;
      *) Echo "Invalid option"
esac
}

yes(){
    echo "Your Booking has been cancelled
money will be refunded to your account
 within 1-2 business days."
echo " "
echo "----------------------------------------------------------------"

}

cancellation(){
       echo "Please enter your booking number:"
       read booking_number
       stored_book=${users["$username"]}
if [ "$stored_book" == "$booking_number" ]
 then
    echo " "
    echo "--> Booking For $username."
echo "----------------------------------------------------------------"
    echo " "
else
    echo "--> Invalid Booking Number."
echo "----------------------------------------------------------------"
    echo " "
fi
echo " "
echo "Do you want to cancel your trip?
1. Yes 
2. No"
read con
echo "----------------------------------------------------------------"
case $con in
1) yes;;
2) echo "Going back.....";;
*) echo "Invalid Option";;
esac  
}

transport(){
case $tran in
1) echo "through Vistara airlines,having Seatno(s): "
start=101
for ((i=0;i<$num;i++))
do
seatno=$((start+i))
echo "$((i+1)): S$seatno"
done;;
2) echo "through VandeBharat express,having Seatno(s): "
start=21
for ((i=0;i<$num;i++))
do
seatno=$((start+i))
echo "$((i+1)): S$seatno"
done;;
esac
}

dest(){
while true;
do
echo "------------------------- DESTINATIONS -------------------------"
echo "We GoFlyin provide tour to these beautiful places
Please select Destination of your interest: "
echo " "
echo "1.Goa
2. Mumbai
3. Varanasi
4.Mahabaleshwar
5. Srinagar
6. Ooty
7. Going to Main menu"
read dest
echo "----------------------------------------------------------------"
case $dest in
1) Goa;;
2) Mumbai;;
3) Varanasi;;
4) Mahabaleshwar;;
5) Srinagar;;
6) Ooty;;
7) break;;
*) Invalid Option;;
esac
done
}

goah1(){
case $hotel in
1) echo "Your booking has been done for Shelsta Holiday";;
2) echo "Your booking has been done for Sun Park baga";;
3) echo "Your booking has been done for FabExpress";;
*) echo "Invalid option";;
esac
}
goah2(){
case $hotel in
1) echo "Your booking has been done for Santiago Resort";;
2) echo "Your booking has been done for SinQ Hotel";;
3) echo "Your booking has been done for Ticlo Resort";;
*) echo "Invalid option";;
esac
}
goah3(){
case $hotel in
1) echo "Your booking has been done for Hayat Palace";;
2) echo "Your booking has been done for La Calypso Resort";;
3) echo "Your booking has been done for Antariam Resort";;
*) echo "Invalid option";;
esac
}
mumh1(){
case $hotel in
1) echo "Your booking has been done for Zostel Mumbai";;
2) echo "Your booking has been done for Hotel Magnet";;
3) echo "Your booking has been done for Dev Shelters";;
*) echo "Invalid option";;
esac
}
mumh2(){
case $hotel in
1) echo "Your booking has been done for Hotel Parle International";;
2) echo "Your booking has been done for BKC Mannat";;
3) echo "Your booking has been done for Kings International";;
*) echo "Invalid option";;
esac
}
mumh3(){
case $hotel in
1) echo "Your booking has been done for Xenia Luxuries";;
2) echo "Your booking has been done for Hotel Orchids";;
3) echo "Your booking has been done for Novotel Mumbai";;
*) echo "Invalid option";;
esac
}
varh1(){
case $hotel in
1) echo "Your booking has been done for Gupta inn";;
2) echo "Your booking has been done for Hotel Sahu";;
3) echo "Your booking has been done for GoStops Varanasi";;
*) echo "Invalid option";;
esac
}
varh2(){
case $hotel in
1) echo "Your booking has been done for Golden Crown";;
2) echo "Your booking has been done for Primiere Villa";;
3) echo "Your booking has been done for Hotel Haistin";;
*) echo "Invalid option";;
esac
}
varh3(){
case $hotel in
1) echo "Your booking has been done for Hotel Madin";;
2) echo "Your booking has been done for Belocus Villa";;
3) echo "Your booking has been done for NamaStays";;
*) echo "Invalid option";;
esac
}
mahah1(){
case $hotel in
1) echo "Your booking has been done for Nexottel Cottage";;
2) echo "Your booking has been done for Onella Regacy";;
3) echo "Your booking has been done for Saga Resort";;
*) echo "Invalid option";;
esac
}
mahah2(){
case $hotel in
1) echo "Your booking has been done for The Plam Valley";;
2) echo "Your booking has been done for Shreyas Hotel";;
3) echo "Your booking has been done for Grand Resort";;
*) echo "Invalid option";;
esac
}
mahah3(){
case $hotel in
1) echo "Your booking has been done for Gupta Villa";;
2) echo "Your booking has been done for SaffronStays";;
3) echo "Your booking has been done for CosmicStays";;
*) echo "Invalid option";;
esac
}
srih1(){
case $hotel in
1) echo "Your booking has been done for Shahpura Residency";;
2) echo "Your booking has been done for New Time Star";;
3) echo "Your booking has been done for Zostel Srinagar";;
*) echo "Invalid option";;
esac
}
srih2(){
case $hotel in
1) echo "Your booking has been done for Lee Heritage";;
2) echo "Your booking has been done for Hotel The Victory";;
3) echo "Your booking has been done for Aziz Palace";;
*) echo "Invalid option";;
esac
}
srih3(){
case $hotel in
1) echo "Your booking has been done for Welcome Heritage";;
2) echo "Your booking has been done for The Orchards";;
3) echo "Your booking has been done for Lecasa Luxury";;
*) echo "Invalid option";;
esac
}
oth2(){
case $hotel in
1) echo "Your booking has been done for Heritage View";;
2) echo "Your booking has been done for Western Valley Resort";;
3) echo "Your booking has been done for Gardern Manor";;
*) echo "Invalid option";;
esac
}
oth1(){
case $hotel in
1) echo "Your booking has been done for HailStone HomeStay";;
2) echo "Your booking has been done for Cathcy Cottage";;
3) echo "Your booking has been done for GoStops Ooty";;
*) echo "Invalid option";;
esac
}
oth3(){
case $hotel in
1) echo "Your booking has been done for Reubens HomeStay";;
2) echo "Your booking has been done for Stay Vista";;
3) echo "Your booking has been done for Welcome Heritage";;
*) echo "Invalid option";;
esac
}

Goa(){
echo "Please enter Budget per person"
read bgt
echo " "
echo "-----------------------------------------------------------------"
echo " "
  if [ $bgt -lt 4800 ]
      then
         echo "We are sorry,We don't have plan suitable with this budget"
  elif [ $bgt -gt 4700 ] && [ $bgt -lt 6000 ]
      then
         goabron
  elif [ $bgt -gt 5900 ] && [ $bgt -lt 7200 ]
      then
         goasil
  else  
         goagold
  fi
}
goabron(){
echo "--> Bronze Plan is suitable for your budget which consist 
of Two star Hotels,having clean rooms,private bathrooms,limited
 room service,a small on-site restuarant or breakfast area.
Offering Wi-Fi access and Travel via Airline or Train with good 
facilitiesas well as Roadways for local travel.Our agency will
 provide Customer support & your Safety & Security will be ensured 
through-out the trip"
echo " "
echo "-----------------------------------------------------------------"
echo "Do you want to purchase this plan
1. Yes
2. No"
read  ans
echo "-----------------------------------------------------------------"
if [  $ans -eq 1 ]
  then
     echo "Please enter the number of passenger/tourist"
      read num
echo "-----------------------------------------------------------------"
echo "Please select Hotel of your choice
1. Shelsta Holiday
2. Sun Park Baga
3. FabExpress"
read hotel
echo "-----------------------------------------------------------------"
echo "Please select Transportation of your choice
1. Airlines
2. Train"
read tran
echo "-----------------------------------------------------------------"

         total=$((4800*$num))
            echo "--> Your total expense for this trip is $total"
echo "-----------------------------------------------------------------"
            echo " "
            echo "Please enter your date of Journey"
            read da
echo " "
payment
echo "------------------------- BOOKING DETAILS -----------------"
transport

echo "Your Journey date is $da
Backup Details will be mailed to your Email Account"
for (( i=0114634577; i>=1; i++ ))
do
   booking_number=$((i+343))
   echo "Your Booking Number is $booking_number"
   users["$username"]="$booking_number"
break
done
echo "------------------------------------------------------------------
Your Plan includes vist to these famous places: 
1. Anjuna Beach
2. Bom Jesus Basilica
3. Fort Aguada
4. Divar Island
5. Dona Paula"
echo "------------------------------------------------------------------
Have a Great journey and Joyfull vacation
Thank you for choosing GoFlyin tours & Travel"
echo "------------------------------------------------------------------"
echo " "
   break
else
    echo "Going back....."
fi
}
goasil(){
echo "--> Silver Plan is suitable for your budget which consist 
of Three Star hotels,having clean & comfortable rooms,private bathroom,housekeeping services,Wi-Fi,Television,Air conditioning,
Restuarant & breakfast services,Lounge/bar Area.Offering Travel 
via Airline or Train with good facilitiesas well as Roadways for 
local travel.Our agency will provide Customer support & your Safety 
& Security will be ensured through-out the trip"
echo " "
echo "-----------------------------------------------------------------"
echo "Do you want to purchase this plan
1. Yes
2. No"
read  ans
echo "-----------------------------------------------------------------"
if [  $ans -eq 1 ]
  then
     echo "Please enter the number of passenger/tourist"
      read num
echo "-----------------------------------------------------------------"
echo "Please select Hotel of your choice
1. Santiago Resort
2. SinQ Hotel
3. Ticlo Resort"
read hotel
echo "-----------------------------------------------------------------"
echo "Please select Transportation of your choice
1. Airlines
2. Train"
read tran
echo " "
echo "-----------------------------------------------------------------"
         total=$((6000*$num))
            echo "--> Your total expense for this trip is $total"
            echo " "
echo "-----------------------------------------------------------------"
            echo "Please enter your date of Journey"
            read da
echo " "
payment
echo "------------------------- BOOKING DETAILS ------------------------"
goah2
transport
echo "Your Journey date is $da
Backup Details will be mailed to your Email Account"
for (( i=0124634577; i>=1; i++ ))
do
   booking_number=$((i+343))
   echo "Your Booking Number is $booking_number"
   users["$username"]="$booking_number"
break
done
echo "-----------------------------------------------------------------
Your Plan includes vist to these famous places: 
1. Anjuna Beach
2. Bom Jesus Basilica
3. Fort Aguada
4. Divar Island
5. Dona Paula"
echo "-----------------------------------------------------------------
Have a Great journey and Joyfull vacation
Thank you for choosing GoFlyin tours & Travel"
echo "-----------------------------------------------------------------"
echo " "
   break
else
    echo "Going back....."
fi
}
goagold(){
echo "--> Golden Plan is suitable for your budget having Five 
Star hotels consisting Luxuries amenities,Upscale restuarant,
swimming pools,Fitness centers,High speed Wi-Fi,Spacious Rooms 
with premium bedding,and breathtaking Views.Offering Offering 
Travel via Airline or Train with good facilitiesas well as 
Roadways for local travel.Our agency will provide Customer 
support & your Safety & Security will be ensured through-out 
the trip"
echo " "
echo "-----------------------------------------------------------------"
echo "Do you want to purchase this plan
1. Yes
2. No"
read  ans
echo "-----------------------------------------------------------------"
if [  $ans -eq 1 ]
  then
     echo "Please enter the number of passenger/tourist"
      read num
echo "-----------------------------------------------------------------"
echo "Please select Hotel of your choice
1. Hayat Palace
2. La Calypso Resort
3. Antarim Resort"
read hotel
echo "-----------------------------------------------------------------"
echo "Please select Transportation of your choice
1. Airlines
2. Train"
read tran
echo "-----------------------------------------------------------------"
         total=$((7200*$num))
            echo "--> Your total expense for this trip is $total"
            echo " "
            echo "Please enter your date of Journey"
            read da
echo " "
payment
echo "------------------------- BOOKING DETAILS ------------------------"
goah3
transport
echo "Your Journey date is $da
Backup Details will be mailed to your Email Account"
for (( i=0134634577; i>=1; i++ ))
do
   booking_number=$((i+343))
   echo "Your Booking Number is $booking_number"
   users["$username"]="$booking_number"
break
done
echo "-----------------------------------------------------------------
Your Plan includes vist to these famous places:
1. Anjuna Beach
2. Bom Jesus Basilica
3. Fort Aguada
4. Divar Island
5. Dona Paula" 
echo "-----------------------------------------------------------------
Have a Great journey and Joyfull vacation
Thank you for choosing GoFlyin tours & Travel"
echo "-----------------------------------------------------------------"
echo " "
   break
else
    echo "Going back....."

fi
}
Mumbai(){
echo "Please enter Budget per person"
read bgt
echo " "
echo "-----------------------------------------------------------------"
echo " "
  if [ $bgt -lt 5200 ]
      then
         echo "We are sorry,We don't have plan suitable with this budget"
  elif [ $bgt -gt 5100 ] && [ $bgt -lt 6500 ]
      then
         mumbron
  elif [ $bgt -gt 6400 ] && [ $bgt -lt 7800 ]
      then
         mumsil
  else  
         mumgold
  fi
}
mumbron(){
echo "--> Bronze Plan is suitable for your budget which consist 
of Two star Hotels,having clean rooms,private bathrooms,limited
room service,a small on-site restuarant or breakfast area.
Offering Wi-Fi access and Travel via Airline or Train with good 
facilities.Our agency will provide Customer support & your Safety 
& Security will be ensured through-out thetrip"
echo " "
echo "-----------------------------------------------------------------"
echo "Do you want to purchase this plan
1. Yes
2. No"
read  ans
echo "-----------------------------------------------------------------"
if [  $ans -eq 1 ]
  then
     echo "Please enter the number of passenger/tourist"
      read num
echo "-----------------------------------------------------------------"
echo "Please select Hotel of your choice
1. Zostel Mumbai
2. Hotel Magnet
3. Dev Shelters"
read hotel
echo "-----------------------------------------------------------------"
echo "Please select Transportation of your choice
1. Airlines
2. Train"
read tran
echo "-----------------------------------------------------------------"
         total=$((5200*$num))
            echo "--> Your total expense for this trip is $total"
            echo " "
            echo "Please enter your date of Journey"
            read da
echo " "
payment
echo "------------------------- BOOKING DETAILS ------------------------"
mumh1
transport
echo "Your Journey date is $da
Backup Details will be mailed to your Email Account"
for (( i=0214634577; i>=1; i++ ))
do
   booking_number=$((i+343))
   echo "Your Booking Number is $booking_number"
   users["$username"]="$booking_number"
break
done
echo "-----------------------------------------------------------------
Your Plan includes vist to these famous places: 
1. Gateway of India
2. Film City Mumbai
3. Haji Ali
4. Prince of Wales Museum
5. Marine Drive"
echo "-----------------------------------------------------------------
Have a Great journey and Joyfull vacation
Thank you for choosing GoFlyin tours & Travel"
echo "-----------------------------------------------------------------"
echo " "
   break
else
    echo "Going back....."
fi
}  
mumsil(){
echo "--> Silver Plan is suitable for your budget which consist of 
Three Star hotels,having clean & comfortable rooms,private bathroom,housekeeping services,Wi-Fi,Television,Air conditioning,
Restuarant & breakfast services,Lounge/bar Area.Offering Travel 
via Airline or Train with good facilitiesas well as Roadways for 
local travel.Our agency will provide Customer support & your Safety 
& Security will be ensured through-out the trip"
echo " "
echo "-----------------------------------------------------------------"
echo "Do you want to purchase this plan
1. Yes
2. No"
read  ans
echo "-----------------------------------------------------------------"
if [  $ans -eq 1 ]
  then
     echo "Please enter the number of passenger/tourist"
      read num
echo "-----------------------------------------------------------------"
echo "Please select Hotel of your choice
1. Hotel Parle International
2. BKC Mannat
3. Kings International"
read hotel
echo "-----------------------------------------------------------------"
echo "Please select Transportation of your choice
1. Airlines
2. Train"
read tran
echo "-----------------------------------------------------------------"
         total=$((6500*$num))
            echo "--> Your total expense for this trip is $total"
            echo " "
echo "-----------------------------------------------------------------"
            echo "Please enter your date of Journey"
            read da
echo " "
payment
echo "------------------------- BOOKING DETAILS ------------------------"
mumh2
transport
echo "Your Journey date is $da
Backup Details will be mailed to your Email Account"
for (( i=0224634577; i>=1; i++ ))
do
   booking_number=$((i+343))
   echo "Your Booking Number is $booking_number"
   users["$username"]="$booking_number"
break
done
echo "-----------------------------------------------------------------
Your Plan includes vist to these famous places: 
1. Gateway of India
2. Film City Mumbai
3. Haji Ali
4. Prince of Wales Museum
5. Marine Drive"
echo "-----------------------------------------------------------------
Have a Great journey and Joyfull vacation
Thank you for choosing GoFlyin tours & Travel"
echo "-----------------------------------------------------------------"
echo " "
   break
else
    echo "Going back....."
fi
}
mumgold(){
echo "--> Golden Plan is suitable for your budget having Five 
Star hotels consisting Luxuries amenities,Upscale restuarant,
swimming pools,Fitness centers,High speed Wi-Fi,Spacious Rooms 
with premium bedding,and breathtaking Views.Offering Offering 
Travel via Airline or Train with good facilitiesas well as 
Roadways for local travel.Our agency will provide Customer 
support & your Safety & Security will be ensured through-out 
the trip"
echo " "
echo "-----------------------------------------------------------------"
echo "Do you want to purchase this plan
1. Yes
2. No"
read  ans
echo "-----------------------------------------------------------------"
if [  $ans -eq 1 ]
  then
     echo "Please enter the number of passenger/tourist"
      read num
echo "-----------------------------------------------------------------"
echo "Please select Hotel of your choice
1. Xenia Luxuries
2. The Orchids
3. Novotel Mumbai"
read hotel
echo "-----------------------------------------------------------------"
echo "Please select Transportation of your choice
1. Airlines
2. Train"
read tran
echo "-----------------------------------------------------------------"
         total=$((7800*$num))
            echo "--> Your total expense for this trip is $total"
            echo " "
            echo "Please enter your date of Journey"
            read da
echo " "
payment
echo "------------------------- BOOKING DETAILS ------------------------"
mumh3
transport
echo "Your Journey date is $da
Backup Details will be mailed to your Email Account"
for (( i=0234634577; i>=1; i++ ))
do
   booking_number=$((i+343))
   echo "Your Booking Number is $booking_number"
   users["$username"]="$booking_number"
break
done
echo "-----------------------------------------------------------------
Your Plan includes vist to these famous places:
1. Gateway of India
2. Film City Mumbai
3. Haji Ali
4. Prince of Wales Museum
5. Marine Drive" 
echo "-----------------------------------------------------------------
Have a Great journey and Joyfull vacation
Thank you for choosing GoFlyin tours & Travel"
echo "-----------------------------------------------------------------"
echo " "
   break
else
    echo "Going back....."
fi
}
Varanasi(){
echo "Please enter Budget per person"
read bgt
echo " "
echo "-----------------------------------------------------------------"
echo " "
  if [ $bgt -lt 5000 ]
      then
         echo "We are sorry,We don't have plan suitable with this budget"
  elif [ $bgt -gt 4900 ] && [ $bgt -lt 6300 ]
      then
         varbron
  elif [ $bgt -gt 6200 ] && [ $bgt -lt 7600 ]
      then
         varsil
  else  
         vargold
  fi
}
varbron(){
echo "--> Bronze Plan is suitable for your budget which consist 
of Two star Hotels,having clean rooms,private bathrooms,limited
room service,a small on-site restuarant or breakfast area.
Offering Wi-Fi access and Travel via Airline or Train with good facilities.Our agency will provide Customer support & your Safety
 & Security will be ensured through-out the
trip"
echo " "
echo "-----------------------------------------------------------------"
echo "Do you want to purchase this plan
1. Yes
2. No"
read  ans
echo "-----------------------------------------------------------------"
if [  $ans -eq 1 ]
  then
     echo "Please enter the number of passenger/tourist"
      read num
echo "-----------------------------------------------------------------"
echo "Please select Hotel of your choice
1. Gupta Inn.
2. Hotel Sahu
3. GoStops Varanasi"
read hotel
echo "-----------------------------------------------------------------"
echo "Please select Transportation of your choice
1. Airlines
2. Train"
read tran
echo "-----------------------------------------------------------------"
         total=$((5000*$num))
            echo "--> Your total expense for this trip is $total"
            echo " "
echo "-----------------------------------------------------------------"
            echo "Please enter your date of Journey"
            read da
echo " "
payment
echo "------------------------- BOOKING DETAILS ------------------------"
varh1
transport
echo "Your Journey date is $da
Backup Details will be mailed to your Email Account"
for (( i=0314634577; i>=1; i++ ))
do
   booking_number=$((i+343))
   echo "Your Booking Number is $booking_number"
   users["$username"]="$booking_number"
break
done
echo "-----------------------------------------------------------------
Your Plan includes vist to these famous places: 
1. Vindham Waterfall
2. Ganga River
3. Nepali Museum
4. Shivala Ghat
5. Shri Kashi Vishwanat Mandir"
echo "-----------------------------------------------------------------
Have a Great journey and Joyfull vacation
Thank you for choosing GoFlyin tours & Travel"
echo "-----------------------------------------------------------------"
echo " "
   break
else
    echo "Going back....."
fi
}  
varsil(){
echo "--> Silver Plan is suitable for your budget which consist of 
Three Star hotels,having clean & comfortable rooms,private bathroom,housekeeping services,Wi-Fi,Television,Air conditioning,
Restuarant & breakfast services,Lounge/bar Area.Offering Travel 
via Airline or Train with good facilitiesas well as Roadways for 
local travel.Our agency will provide Customer support & your Safety 
& Security will be ensured through-out the trip"
echo " "
echo "-----------------------------------------------------------------"
echo "Do you want to purchase this plan
1. Yes
2. No"
read  ans
echo "-----------------------------------------------------------------"
if [  $ans -eq 1 ]
  then
     echo "Please enter the number of passenger/tourist"
      read num
echo "-----------------------------------------------------------------"
echo "Please select Hotel of your choice
1. Golden Crown
2. Primiere Villa
3. Hotel Haistin"
read hotel
echo "-----------------------------------------------------------------"
echo "Please select Transportation of your choice
1. Airlines
2. Train"
read tran
echo "-----------------------------------------------------------------"
         total=$((6300*$num))
            echo "--> Your total expense for this trip is $total"
            echo " "
echo "-----------------------------------------------------------------"
            echo "Please enter your date of Journey"
            read da
echo " "
payment
echo "------------------------- BOOKING DETAILS ------------------------"
varh2
transport
echo "Your Journey date is $da
Backup Details will be mailed to your Email Account"
for (( i=0324634577; i>=1; i++ ))
do
   booking_number=$((i+343))
   echo "Your Booking Number is $booking_number"
   users["$username"]="$booking_number"
break
done
echo "-----------------------------------------------------------------
Your Plan includes vist to these famous places:
1. Vindham Waterfall
2. Ganga River
3. Nepali Museum
4. Shivala Ghat
5. Shri Kashi Vishwanat Mandir" 
echo "-----------------------------------------------------------------
Have a Great journey and Joyfull vacation
Thank you for choosing GoFlyin tours & Travel"
echo "-----------------------------------------------------------------"
echo " "
   break
else
    echo "Going back....."
fi
}
vargold(){
echo "--> Golden Plan is suitable for your budget having Five 
Star hotels consisting Luxuries amenities,Upscale restuarant,
swimming pools,Fitness centers,High speed Wi-Fi,Spacious Rooms 
with premium bedding,and breathtaking Views.Offering Offering 
Travel via Airline or Train with good facilitiesas well as 
Roadways for local travel.Our agency will provide Customer 
support & your Safety & Security will be ensured through-out 
the trip"
echo " "
echo "-----------------------------------------------------------------"
echo "Do you want to purchase this plan
1. Yes
2. No"
read  ans
echo "-----------------------------------------------------------------"
if [  $ans -eq 1 ]
  then
     echo "Please enter the number of passenger/tourist"
      read num
echo "-----------------------------------------------------------------"
echo "Please select Hotel of your choice
1. Hotel Madin
2. Hotel Belocus
3. NamaStays"
read hotel
echo "-----------------------------------------------------------------"
echo "Please select Transportation of your choice
1. Airlines
2. Train"
read tran
echo "-----------------------------------------------------------------"
         total=$((7600*$num))
            echo "--> Your total expense for this trip is $total"
            echo " "
echo "-----------------------------------------------------------------"
            echo "Please enter your date of Journey"
            read da
echo " "
payment
echo "------------------------- BOOKING DETAILS ------------------------"
varh3
transport
echo "Your Journey date is $da
Backup Details will be mailed to your Email Account"
for (( i=0334634577; i>=1; i++ ))
do
   booking_number=$((i+343))
   echo "Your Booking Number is $booking_number"
   users["$username"]="$booking_number"
break
done
echo "----------------------------------------------------------------
Your Plan includes vist to these famous places: 
1. Vindham Waterfall
2. Ganga River
3. Nepali Museum
4. Shivala Ghat
5. Shri Kashi Vishwanat Mandir"
echo "-----------------------------------------------------------------
Have a Great journey and Joyfull vacation
Thank you for choosing GoFlyin tours & Travel"
echo "-----------------------------------------------------------------"
echo " "
   break
else
    echo "Going back....."
fi
}
Mahabaleshwar(){
echo "Please enter Budget per person"
read bgt
echo " "
echo "-----------------------------------------------------------------"
echo " "
  if [ $bgt -lt 4500 ]
      then
         echo "We are sorry,We don't have plan suitable with this budget"
  elif [ $bgt -gt 4500 ] && [ $bgt -lt 5400 ]
      then
         mahabron
  elif [ $bgt -gt 5400 ] && [ $bgt -lt 6200 ]
      then
         mahasil
  else  
         mahagold
  fi
}
mahabron(){
echo "--> Bronze Plan is suitable for your budget which consist 
of Two star Hotels,having clean rooms,private bathrooms,limited 
room service,a small on-site restuarant or breakfast area.
Offering Wi-Fi access and Travel via Airline or Train with good facilities.Our agency will provide Customer support & your Safety
 & Security will be ensured through-out the
trip" 
echo " "
echo "-----------------------------------------------------------------"
echo "Do you want to purchase this plan
1. Yes
2. No"
read  ans
echo "-----------------------------------------------------------------"
if [  $ans -eq 1 ]
  then
     echo "Please enter the number of passenger/tourist"
      read num
echo "-----------------------------------------------------------------"
echo "Please select Hotel of your choice
1. Nexottel Cottage
2. Onella Regecy
3. Saga Resort"
read hotel
echo "-----------------------------------------------------------------"
echo "Please select Transportation of your choice
1. Airlines
2. Train"
read tran
echo "-----------------------------------------------------------------"
         total=$((4500*$num))
            echo "--> Your total expense for this trip is $total"
            echo " "
echo "-----------------------------------------------------------------"
            echo "Please enter your date of Journey"
            read da
echo " "
payment
echo "------------------------- BOOKING DETAILS ------------------------"
mahah1
transport
echo "Your Journey date is $da
Backup Details will be mailed to your Email Account"
for (( i=0414634577; i>=1; i++ ))
do
   booking_number=$((i+343))
   echo "Your Booking Number is $booking_number"
   users["$username"]="$booking_number"
break
done
echo "-----------------------------------------------------------------
Your Plan includes vist to these famous places: 
1. LodWick Point
2. Mahabaleshwar Hill Station
3. Elphinstone Point
4. GureGhar Natue Trail
5. Chinaman's Falls"
echo "-----------------------------------------------------------------
Have a Great journey and Joyfull vacation
Thank you for choosing GoFlyin tours & Travel"
echo "-----------------------------------------------------------------"
echo " "
   break
else
    echo "Going back....."
fi
}
  
mahasil(){
echo "--> Silver Plan is suitable for your budget which consist of 
Three Star hotels,having clean & comfortable rooms,private bathroom,housekeeping services,Wi-Fi,Television,Air conditioning,
Restuarant & breakfast services,Lounge/bar Area.Offering Travel 
via Airline or Train with good facilitiesas well as Roadways for
local travel.Our agency will provide Customer support & your Safety 
& Security will be ensured through-out the trip"
echo " "
echo "-----------------------------------------------------------------"
echo "Do you want to purchase this plan
1. Yes
2. No"
read  ans
echo "-----------------------------------------------------------------"
if [  $ans -eq 1 ]
  then
     echo "Please enter the number of passenger/tourist"
      read num
echo "-----------------------------------------------------------------"
echo "please select Hotel of your choice
1. The Palm Valley
2. Shreyas Hotel
3. Grand Resort"
read hotel
echo "-----------------------------------------------------------------"
echo "Please select Transportation of your choice
1. Airlines
2. Train"
read tran
echo "-----------------------------------------------------------------"
         total=$((5400*$num))
            echo "--> Your total expense for this trip is $total"
            echo " "
echo "-----------------------------------------------------------------"
            echo "Please enter your date of Journey"
            read da
echo " "
payment
echo "------------------------- BOOKING DETAILS ------------------------"
mahah2
transport
echo "Your Journey date is $da
Backup Details will be mailed to your Email Account"
for (( i=0424634577; i>=1; i++ ))
do
   booking_number=$((i+343))
   echo "Your Booking Number is $booking_number"
   users["$username"]="$booking_number"
break
done
echo "----------------------------------------------------------------
Your Plan includes vist to these famous places: 
1. LodWick Point
2. Mahabaleshwar Hill Station
3. Elphinstone Point
4. GureGhar Natue Trail
5. Chinaman's Falls"
echo "-----------------------------------------------------------------
Have a Great journey and Joyfull vacation
Thank you for choosing GoFlyin tours & Travel"
echo "-----------------------------------------------------------------"
echo " "
   break
else
    echo "Going back....."
fi
}
mahagold(){
echo "--> Golden Plan is suitable for your budget having Five
 Star hotels consisting Luxuries amenities,Upscale restuarant,
swimming pools,Fitness centers,High speed Wi-Fi,Spacious Rooms 
with premium bedding,and breathtaking Views.Offering Offering 
Travel via Airline or Train with good facilitiesas well as 
Roadways for local travel.Our agency will provide Customer support
 & your Safety & Security will be ensured through-out the trip"
echo " "
echo "-----------------------------------------------------------------"
echo "Do you want to purchase this plan
1. Yes
2. No"
read  ans
echo "-----------------------------------------------------------------"
if [  $ans -eq 1 ]
  then
     echo "Please enter the number of passenger/tourist"
      read num
echo "-----------------------------------------------------------------"
echo "Please select Hotel of your choice
1. Gupta Villa
2. SaffronStays
3.CosmicStays"
read hotel
echo "-----------------------------------------------------------------"
echo "Please select Transportation
1. Airlines
2. Train"
read tran
echo "-----------------------------------------------------------------"
         total=$((6200*$num))
            echo "Your total expense for this trip is $total"
            echo " "
            echo "Please enter your date of Journey"
            read da
echo " "
payment
echo "------------------------- BOOKING DETAILS ------------------------"
mahah3
transport
echo "Your Journey date is $da
Backup Details will be mailed to your Email Account"
for (( i=0434634577; i>=1; i++ ))
do
   booking_number=$((i+343))
   echo "Your Booking Number is $booking_number"
   users["$username"]="$booking_number"
break
done
echo "-----------------------------------------------------------------
Your Plan includes vist to these famous places: 
1. LodWick Point
2. Mahabaleshwar Hill Station
3. Elphinstone Point
4. GureGhar Natue Trail
5. Chinaman's Falls"
echo "-----------------------------------------------------------------
Have a Great journey and Joyfull vacation
Thank you for choosing GoFlyin tours & Travel"
echo "-----------------------------------------------------------------"
echo " "
   break
else
    echo "Going back....."
fi
}
Srinagar(){
echo "Please enter Budget per person"
read bgt
echo " "
echo "-----------------------------------------------------------------"
echo " "
  if [ $bgt -lt 4300 ]
      then
         echo "We are sorry,We don't have plan suitable with this budget"
  elif [ $bgt -gt 4200 ] && [ $bgt -lt 5100 ]
      then
         sribron
  elif [ $bgt -gt 5000 ] && [ $bgt -lt 6000 ]
      then
         srisil
  else  
         srigold
  fi
}
sribron(){
echo "--> Bronze Plan is suitable for your budget which consist 
of Two star Hotels,having clean rooms,private bathrooms,limited 
room service,a small on-site restuarant or breakfast area.
Offering Wi-Fi access and Travel via Airline or Train with good facilities.Our agency will provide Customer support & your Safety 
& Security will be ensured through-out the trip"
echo " "
echo "-----------------------------------------------------------------"
echo "Do you want to purchase this plan
1. Yes
2. No"
read  ans
echo "-----------------------------------------------------------------"
if [  $ans -eq 1 ]
  then
     echo "Please enter the number of passenger/tourist"
      read num
echo "-----------------------------------------------------------------"
echo "Please select Hotel of your choice
1. Shahpura Residency
2. New Time Star
3. Zostel Srinagar"
read hotel
echo "-----------------------------------------------------------------"
echo "Please select Transportation of your choice
1. Airlines
2. Train"
read tran
echo "-----------------------------------------------------------------"
         total=$((4300*$num))
            echo "--> Your total expense for this trip is $total"
            echo " "
echo "-----------------------------------------------------------------"
            echo "Please enter your date of Journey"
            read da
echo " "
payment
echo "------------------------- BOOKING DETAILS ------------------------"
srih1
transport
echo "Your Journey date is $da
Backup Details will be mailed to your Email Account"
for (( i=0514634577; i>=1; i++ ))
do
   booking_number=$((i+343))
   echo "Your Booking Number is $booking_number"
   users["$username"]="$booking_number"
break
done
echo "-----------------------------------------------------------------
Your Plan includes vist to these famous places: 
1. Shalimar Bagh
2. HazratBal Shrine
3. Pari Mahal
4. Cheshma Shahi Garden
5. Sri Shankaracharya Mandir"
echo "-----------------------------------------------------------------
Have a Great journey and Joyfull vacation
Thank you for choosing GoFlyin tours & Travel"
echo " "
echo "-----------------------------------------------------------------"
   break
else
    echo "Going back....."
fi
}  
srisil(){
echo "--> Silver Plan is suitable for your budget which consist of 
Three Star hotels,having clean & comfortable rooms,private bathroom,housekeeping services,Wi-Fi,Television,Air conditioning,
Restuarant & breakfast services,Lounge/bar Area.Offering Travel 
via Airline or Train with good facilitiesas well as Roadways for
local travel.Our agency will provide Customer support & your Safety 
& Security will be ensured through-out the trip"
echo " "
echo "-----------------------------------------------------------------"
echo "Do you want to purchase this plan
1. Yes
2. No"
read  ans
echo "-----------------------------------------------------------------"
if [  $ans -eq 1 ]
  then
     echo "Please enter the number of passenger/tourist"
      read num
echo "Please select Hotel of your choice
1. Lee Heritage
2. Hotel The Victory
3. Aziz Palace"
read hotel
echo "-----------------------------------------------------------------"
echo "Please select Transportation of your choice
1. Airlines
2. Train"
read tran
echo "-----------------------------------------------------------------"
         total=$((5100*$num))
            echo "--> Your total expense for this trip is $total"
            echo " "
echo "-----------------------------------------------------------------"
            echo "Please enter your date of Journey"
            read da
echo " "
payment
echo "------------------------- BOOKING DETAILS ------------------------"
srih2
transport
echo "Your Journey date is $da
Backup Details will be mailed to your Email Account"
for (( i=0524634577; i>=1; i++ ))
do
   booking_number=$((i+343))
   echo "Your Booking Number is $booking_number"
   users["$username"]="$booking_number"
break
done
echo "----------------------------------------------------------------
Your Plan includes vist to these famous places: 
1. Shalimar Bagh
2. HazratBal Shrine
3. Pari Mahal
4. Cheshma Shahi Garden
5. Sri Shankaracharya Mandir"
echo "-----------------------------------------------------------------
Have a Great journey and Joyfull vacation
Thank you for choosing GoFlyin tours & Travel"
echo "-----------------------------------------------------------------"
echo " "
   break
else
    echo "Going back....."
fi
}
srigold(){
echo "--> Golden Plan is suitable for your budget having Five Star
hotels consisting Luxuries amenities,Upscale restuarant,
swimming pools,Fitness centers,High speed Wi-Fi,Spacious 
Rooms with premium bedding,and breathtaking Views.Offering 
Offering Travel via Airline or Train with good facilitiesas well
as Roadways for local travel.Our agency will provide Customer 
support & your Safety & Security will be ensured through-out 
the trip"
echo " "
echo "-----------------------------------------------------------------"
echo "Do you want to purchase this plan
1. Yes
2. No"
read  ans
echo "-----------------------------------------------------------------"
if [  $ans -eq 1 ]
  then
     echo "Please enter the number of passenger/tourist"
      read num
echo "-----------------------------------------------------------------"
echo "Please select Hotel of your choice
1. Welcome Heritage
2. The Orchards
3. Lecasa Luxury"
read hotel
echo "-----------------------------------------------------------------"
echo "Please select Transportation of your choice
1. Airlines
2. Train"
read tran
echo "-----------------------------------------------------------------"
         total=$((6000*$num))
            echo "--> Your total expense for this trip is $total"
            echo " "
echo "-----------------------------------------------------------------"
            echo "Please enter your date of Journey"
            read da
echo " "
payment
echo "------------------------- BOOKING DETAILS ------------------------"
srih3
transport
echo "Your Journey date is $da
Backup Details will be mailed to your Email Account"
for (( i=0534634577; i>=1; i++ ))
do
   booking_number=$((i+343))
   echo "Your Booking Number is $booking_number"
   users["$username"]="$booking_number"
break
done
echo "-----------------------------------------------------------------
Your Plan includes vist to these famous places: 
1. Shalimar Bagh
2. HazratBal Shrine
3. Pari Mahal
4. Cheshma Shahi Garden
5. Sri Shankaracharya Mandir"
echo "-----------------------------------------------------------------
Have a Great journey and Joyfull vacation
Thank you for choosing GoFlyin tours & Travel"
echo "-----------------------------------------------------------------"
echo " "
   break
else
    echo "Going back....."
fi
}
Ooty(){
echo "Please enter Budget per person"
read bgt
echo " "
echo "-----------------------------------------------------------------"
echo " "
  if [ $bgt -lt 5200 ]
      then
         echo "We are sorry,We don't have plan suitable with this budget,We don't have plan suitable with this budget"
  elif [ $bgt -gt 5100 ] && [ $bgt -lt 5900 ]
      then
         otbron
  elif [ $bgt -gt 5800 ] && [ $bgt -lt 6700 ]
      then
         otsil
  else  
         otgold
  fi
}
otbron(){
echo "--> Bronze Plan is suitable for your budget which consist 
of Two star Hotels,having clean rooms,private bathrooms,limited 
room service,a small on-site restuarant or breakfast area.
Offering Wi-Fi access and Travel via Airline or Train with good facilities.Our agency will provide Customer support & your Safety 
& Security will be ensured through-out the trip" 
echo " "
echo "-----------------------------------------------------------------"
echo "Do you want to purchase this plan
1. Yes
2. No"
read  ans
echo "-----------------------------------------------------------------"
if [  $ans -eq 1 ]
  then
     echo "Please enter the number of passenger/tourist"
      read num
echo "-----------------------------------------------------------------"
echo "Please select Hotel of your choice
1. HailStone HomeStay
2. Cathcy Cottage
3. GoStops Ooty"
read hotel
echo "-----------------------------------------------------------------"
echo "Please select Transportation of your choice
1. Airlines
2. Train"
read tran
echo "-----------------------------------------------------------------"
         total=$((5200*$num))
            echo "--> Your total expense for this trip is $total"
            echo " "
echo "-----------------------------------------------------------------"
            echo "Please enter your date of Journey"
            read da
echo " "
payment
echo "------------------------- BOOKING DETAILS ------------------------"
oth1
transport
echo "Your Journey date is $da
Backup Details will be mailed to your Email Account"
for (( i=0614634577; i>=1; i++ ))
do
   booking_number=$((i+343))
   echo "Your Booking Number is $booking_number"
   users["$username"]="$booking_number"
break
done
echo "----------------------------------------------------------------
Your Plan includes vist to these famous places: 
1. Avalanche lake
2. Doddabetta peak
3. Needle View
4. Pykara Waterfalls
5. Murugan Temple,Elk hill"
echo "-----------------------------------------------------------------
Have a Great journey and Joyfull vacation
Thank you for choosing GoFlyin tours & Travel"
echo "-----------------------------------------------------------------"
echo " "
   break
else
    echo "Going back....."
fi
}  
otsil(){
echo "--> Silver Plan is suitable for your budget which consist of
Three Star hotels,having clean & comfortable rooms,private bathroom,housekeeping services,Wi-Fi,Television,Air conditioning,
Restuarant & breakfast services,Lounge/bar Area.Offering Travel 
via Airline or Train with good facilitiesas well as Roadways for 
local travel.Our agency will provide Customer support & your Safety
& Security will be ensured through-out the trip"
echo " "
echo "-----------------------------------------------------------------"
echo "Do you want to purchase this plan
1. Yes
2. No"
read  ans
echo "-----------------------------------------------------------------"
if [  $ans -eq 1 ]
  then
     echo "Please enter the number of passenger/tourist"
      read num
echo "-----------------------------------------------------------------"
echo "Please select Hotel of your choice
1. Zostel Ooty
2. Heritage View
3. Gadern Manor"
read hotel
echo "-----------------------------------------------------------------"
echo "Please select Transportation of your choice
1. Airlines
2. Train"
read tran
echo "-----------------------------------------------------------------"
         total=$((5900*$num))
            echo "--> Your total expense for this trip is $total"
            echo " "
echo "-----------------------------------------------------------------"
            echo "Please enter your date of Journey"
            read da
echo " "
payment
echo "------------------------- BOOKING DETAILS ------------------------"
oth2
transport
echo "Your Journey date is $da
Backup Details will be mailed to your Email Account"
for (( i=0624634577; i>=1; i++ ))
do
   booking_number=$((i+343))
   echo "Your Booking Number is $booking_number"
   users["$username"]="$booking_number"
break
done
echo "----------------------------------------------------------------
Your Plan includes vist to these famous places: 
1. Avalanche lake
2. Doddabetta peak
3. Needle View
4. Pykara Waterfalls
5. Murugan Temple,Elk hill"
echo "-----------------------------------------------------------------
Have a Great journey and Joyfull vacation
Thank you for choosing GoFlyin tours & Travel"
echo "-----------------------------------------------------------------"
echo " "
   break
else
    echo "Going back....."
fi
}
otgold(){
echo "--> Golden Plan is suitable for your budget having Five 
Star hotels consisting Luxuries amenities,Upscale restuarant,
swimming pools,Fitness centers,High speed Wi-Fi,Spacious Rooms 
with premium bedding,and breathtaking Views.Offering Offering
 Travel via Airline or Train with good facilitiesas well as 
Roadways for local travel.Our agency will provide Customer 
support & your Safety & Security will be ensured through-out
 the trip"
echo " "
echo "-----------------------------------------------------------------"
echo "Do you want to purchase this plan
1. Yes
2. No"
read  ans
echo "-----------------------------------------------------------------"
if [  $ans -eq 1 ]
  then
     echo "Please enter the number of passenger/tourist"
      read num
echo "-----------------------------------------------------------------"
echo "Please select Hotel of your choice
1. Reubens HomeStay
2. Stay Vista
3. Welcome Heritage"
read hotel
echo "-----------------------------------------------------------------"
echo "Please select Transportation of your choice
1. Airlines
2. Train"
read tran
echo "-----------------------------------------------------------------"
         total=$((6700*$num))
            echo "--> Your total expense for this trip is $total"
            echo " "
echo "-----------------------------------------------------------------"
            echo "Please enter your date of Journey"
            read da
echo " "
payment
echo "------------------------- BOOKING DETAILS ------------------------"
oth3
transport
echo "Your Journey date is $da
Backup Details will be mailed to your Email Account"
for (( i=0634634577; i>=1; i++ ))
do
   booking_number=$((i+343))
   echo "Your Booking Number is $booking_number"
   users["$username"]="$booking_number"
break
done
echo "-----------------------------------------------------------------
Your Plan includes vist to these famous places:
1. Avalanche lake
2. Doddabetta peak
3. Needle View
4. Pykara Waterfalls
5. Murugan Temple,Elk hill" 
echo "-----------------------------------------------------------------
Have a Great journey and Joyfull vacation
Thank you for choosing GoFlyin tours & Travel"
echo "-----------------------------------------------------------------"
echo " "
   break
else
    echo "Going back....."
fi
}

about()
{
 echo "--------------- ABOUT OUR GOFLYIN AGENCY ---------------"
echo " "
 echo "--> GoFlyin Tours & Travel is a National based 
expriential travel agency.<-- "
echo "--------------------------------------------------------"
 echo "We provide Memorable Family Holiday Experience,
GoFlyin is here to give you the best experiences
in everything you wish to do!"
echo "--------------------------------------------------------"
 echo "At GoFlyin,we belive that every journey is story 
waiting to be written.With a passion ,for exploration 
and a commitment to unparalled service,we're not just 
a travel agency,we're your gateway to unforgettable 
experience.
GoFlyin is with you every step of the way."
echo "--------------------------------------------------------"
 echo "GoFlyin offers Budget friendly qyality family holidays
primarily through vacation ownership,membership and 
brings to the industry values such as reliability,trust 
and customer satisfaction."
echo "--------------------------------------------------------"
 echo "Started in 2020,the company's flagship brand 'GoFlyin',
today has over 8000 members,who can holiday at 100+ 
resorts,nature trails and their vacations in INDIA."
echo "--------------------------------------------------------"
 echo "GoFlyin is the fastest growing travel agency in INDIA,
Let's embark on this journey together and redefine the
way you travel."
echo "--------------------------------------------------------"
echo "If any query,Contact us on info@GoFlyin.co
Phone number: +91-9876543952" 
echo "--------------------------------------------------------"
echo "Headquarters: Mumbai,Maharashtra."
echo "Specialities: Road Trips,Adventure Travel,
Experiental Travel."
echo "------------------------- Thank You --------------------"
echo " "
}

Feedback(){
echo "================== Welcome to Feedback session ===================
                           99.10% Positive Reviews
                           based on 113600 ratings"
echo "------------------------------------------------------------------
                                  Reviews:

*Tours to Goa:
        Good,I'm satisfied
Hello!! GoFlyin Crew.Thank you so much for the amazing trip!!
It was truely memorable for both of us.All the arrangemnet were
at the par and Incrediv=ble.
----By Shubman Bhatt

*Tour to Srinagar
        Good,I'm satisfied
GoFlyin agency exceeded my expectations!!Their 
knowledgeable guides made every excursio memorable.
I Highly recommend GoFlyin to anyone looking for a 
fantastic travel experience
---- By Akansha koli"
echo " "

echo "-------------------------------------------------------------

If you have experienced our services then.....
We would be thankful if you give your Valuable feedback to us:"
echo " "
echo "Please enter your name: "
read name
echo "Please enter your destination place: "
read place

Good(){
echo "As you are Satisfied with our services.....
Please add a comment about quality of support you've recieved: "
read comment
echo " "
}

Bad(){
echo "As you are Unsatisfied with our services.....
Please let us know how we can improve our services: "
read comment
echo " "
}

echo "Please select any option to proceed further: 
1. Good,I'm Satisfied
2. Bad,I'm Unsatisfied
3. Exit"
read option

case $option in
1) Good;;
2) Bad;;
3) echo "Exiting....." exit;;
*) echo "Invalid option";;
esac

Review1(){
echo "
* Tour to $place
        Good,I'm Satisfied.
$comment
---- By $name "
}
Review2(){
echo "
* Tour to $place
        Bad,I'm Unsatisfied.
$comment
---- By $name "
echo " "
}
 if test $option -eq 1
   then
      finrev(){
echo "------------------------------------------------------------------
                             Updated Reviews:"
           Review1
echo " "
echo "------------------------------------------------------------------"
              echo "*Tours to Goa:
        Good,I'm satisfied
Hello!! GoFlyin Crew.Thank you so much for the amazing 
trip!!It was truely memorable for both of us.All the 
arrangemnet were at the par and Incredible.
----By Shubman Bhatt"
echo " "
echo "------------------------------------------------------------------"
echo "*Tour to Srinagar
       Good,I'm satisfied
GoFlyin agency exceeded my expectations!!Their 
knowledgeable guides made every excursio memorable.
I Highly recommend GoFlyin to anyone looking for a 
fantastic travel experience
---- By Akansha koli"
echo " "
echo "------------------------------------------------------------------"
}
finrev
fi
if test $option -eq 2
     then
        finrev2(){
echo "------------------------------------------------------------------
                             Updated Reviews:"
         Review2
echo "------------------------------------------------------------------"
           echo "*Tours to Goa:
        Good,I'm satisfied
Hello!! GoFlyin Crew.Thank you so much for the amazing trip!!
It was truely memorable for both of us.All the arrangemnet were
at the par and Incredivble.
----By Shubman Bhatt"
echo " "
echo "------------------------------------------------------------------"
echo "*Tour to Srinagar
       Good,I'm satisfied
GoFlyin agency exceeded my expectations!!Their knowledgeable 
guides made every excursio memorable.I Highly recommend GoFlyin 
to anyone looking for a fantastic travel experience
---- By Akansha koli"
echo "-----------------------------------------------------------------"
}
finrev2
fi
}

case $optn in
1) Signup;;
2) Login;;
3) dest;;
4) about;;
5) Feedback;;
6) cancellation;;
7) exit;;
*) echo "Invalid option";;
esac
done 
