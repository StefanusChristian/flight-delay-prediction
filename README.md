# Prediksi penundaan pada penerbangan tahun 2017 di amerika dari Data Jadwal penerbangan di Amerika pada Tahun 2003-2015

Aplikasi shiny ini akan menunjukkan data pada jadwal penerbangan dan jumlah penerbangan yang ditunda pada seluruh bandara di Amerika pada tahun 2003-2015.Aplikasi ini juga dapat digunakan untuk memprediksi penundaan yang akan terjadi pada Tahun 2017 dengan menggunakan data sebelumnya yaitu tahun 2003-2015.

## Kelompok : 
1.	Stefanus Christian // 00000011018
2.	Nigel Justin Junias // 00000015635
3.	Ivans Telianto  // 00000011579

## Dependensi : 
1.	R Studio
2.	Web Browser (R Shiny)

## Cara Menginstall : 
1.	Kloning Repositori ini,
2.	Buka Aplikasi R studio 
3.	Beberapa package yang perlu di Install terlebih dahulu :
a.	dplyr  ( install.package(“dplyr”) )
b.	magrittr (install.package(“magrittr”) )
4.	Jalankan skrip agar data dapat dipakai untuk memprediksi data selanjutnya.
5.	Jalankan aplikasi Shiny.

## Cara Kerja : 
1.	Buka R studio (jika belum ada, bisa diinstall terlebih dahulu)
2.	Pastikan skrip sudah ada di dalam folder R studio
3.	Jalankan Skrip
4.	Jalankan aplikasi Shiny untuk melihat hasilnya

## Metode Prediksi : 
Kami menggunakan Linear Regression untuk memprediksi delayed flight pada aplikasi kami. Linear Regression sendiri itu digunakan untuk memprediksi (y). Variable y itu sendiri adalah hasil prediksi yang didapatkan berdasarkan data dari variable(x).

<p align ="center"><h1>Lm(y~x)</h1></p>

## Pemodelan :
1.	Ini adalah Data original yang kita dapatkan. Data telah difilter.
<p align = "center"> <img src="https://github.com/justinjunias/flight-delay-prediction/blob/master/test/originaldata.png">
2. 2.	Dari data yang baru tersebut, kita dapat run agar kita dapat mendapatkan data yang lebih baru lagi yaitu prediksi untuk penerbangan yang akan terjadi pada tahun 2017. Hasil prediksi penerbangan pada tahun 2017 akan di masukan di Dataframe newTest
<p align = "center"> <img src="https://github.com/justinjunias/flight-delay-prediction/blob/master/test/newtest.png">
3.Hasil dari prediksi tersebut akan digabung dengan data original yang sudah difilter dan ditampung di newdf.
<p align = "center"> <img src="https://github.com/justinjunias/flight-delay-prediction/blob/master/test/newdf.png">
4.Ini adalah tampilan dari hasil prediksi yang telah dijalankan.
<p align = "center"> <img src ="https://github.com/justinjunias/flight-delay-prediction/blob/master/test/shiny.png">
