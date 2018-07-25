# Prediksi penundaan pada penerbangan tahun 2017 di Amerika dari Data Jadwal penerbangan di Amerika pada Tahun 2003-2015

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
4.	Jalankan skrip tersebut untuk melakukan instalasi package tersebut.

## Cara Kerja : 
1.	Buka R studio (jika belum ada, bisa diinstall terlebih dahulu)
2.  Buka file project <i>test.Rproj</i>
2.	Buka file <i>scriptDelay.R</i>. Pastikan file <i>FlightData.csv</i> ada pada satu directory yang sama dengan <i>test.Rproj</i>  dan semua library pada script tersebut sudah di install (Lakukan Cara Menginstall).
3.	Jalankan script
4.  Buka <i>ui.R</i> dan <i>server.R</i>
4.	Jalankan aplikasi Shiny untuk melihat hasilnya

## Metode Prediksi : 
Kami menggunakan Linear Regression untuk memprediksi delayed flight pada aplikasi kami. Linear Regression sendiri itu digunakan untuk memprediksi (y). Variable y itu sendiri adalah hasil prediksi yang didapatkan berdasarkan data dari variable(x).

<p align = "center"> <h1>Lm(y~x)</h1> </p>

## Pemodelan :
1.Ini adalah Data Frame dari file original(CSV) yang telah kita filter sesuai dengan yang dibutuhkan dalam melakukan prediksi.
<p align = "center"> <img src="https://github.com/justinjunias/flight-delay-prediction/blob/master/test/originaldata.png"> </p>
2.Dari data tersebut, kita dapat membuat DataFrame testData untuk menjadi variabel yang akan digunakan dalam prediksi delay penerbangan pada tahun 2017. Hasil prediksi penerbangan pada tahun 2017 akan dimasukkan ke dalam DataFrame baru newTest
<p align = "center"> <img src="https://github.com/justinjunias/flight-delay-prediction/blob/master/test/newtest.png"> </p>
3.Hasil dari prediksi tersebut (newTest) akan digabung dengan data original yang sudah difilter dan ditampung di newdf. DataFrame ini yang nantinya akan digunakan pada aplikasi R Shiny.
<p align = "center"> <img src="https://github.com/justinjunias/flight-delay-prediction/blob/master/test/newdf.png"> </p>
4.Berikut adalah tampilan R Shiny untuk menunjukkan data delay setiap tahun. Data yang merupakan hasil prediksi adalah semua data pada tahun 2017.
<p align = "center"> <img src ="https://github.com/justinjunias/flight-delay-prediction/blob/master/test/shiny.png"> </p>

## Disklaim :
Data yang kita gunakan pada pembuatan aplikasi ini berasal dari https://think.cs.vt.edu/corgis/csv/airlines/airlines.html, dan data ini hanya digunakan untuk kepentingan akademis semata.

Pembuatan aplikasi ini bertujuan untuk memenuhi tugas mata kuliah <i>Frontier Technology</i> jurusan Teknik Informtika Universitas Pelita Harapan semester Akselerasi 2017/2018
