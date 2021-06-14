Program RIDINGAPPAREL;

uses crt;
    const max  = 20;
    type queue      = record
                      kelompok  : array[1..max] of string;
                          utama : 0..max;
     end;

     type jual        = record
            		total : real;
	    		merk  : string;
            end;

    arr_jual = array[1..20] of jual;

     type kota = record
                namakota : string;
	        ongkos : real;
		end;
	type arrkota = array [ 1..max] of kota;
//============================================VAR GLOBAL====================================================
  var
     katalog                     			     :integer;
     jual1                       			     :arr_jual;
     alamat , barang ,produk ,kelompok ,nb ,caribarang ,nope : string;
     harga,menu,jumlah,toth  				     :longint;
     pilihan , nkota     			     :integer;
   total,kem,ua,tot ,totalongkos   					     :real;
      datakota                                               :arrkota;

//============================================PROCEDURE 1====================================================================

procedure halamanutamakatalog(var q:integer);
begin
clrscr;
     writeln('                            ===================================================>      ');
     writeln('                             NO. SILAHKAN PILIH PRODUK                     ');
     writeln('                             1.  HELM                                          ');
     writeln('                             2.  JAKET                                         ');
     writeln('                             3.  INTERCOM                                      ');
     writeln('                             4.  SARUNG TANGAN                                 ');
     writeln('                             5.  KEMBALI MENUJU MENU                           ');
     writeln('                              PILIH JENIS PRODUK  : ')   ;
     writeln('                             <===================================================  ');
													readln(menu);

clrscr;

case menu of
     1:begin
//=================================================================HELM===================================================
       kelompok :=  'HELM';

     writeln('                                 ==============================>');
     writeln('                                 NO  PILIH HELM               ');
     writeln('                                 1.  ARAI                     ');
     writeln('                                 2.  HJC                      ');
     writeln('                                 3.  AGV                      ');
     writeln('                                 4.  SHOEI                    ');
     writeln('                                 5.  KABUTO                   ');
     writeln('                                 PILIH PRODUK YANG AKAN DIBELI :');
     writeln('                                <=============================  ');
												readln (produk);
     if produk='1' then
     begin
      barang :='ARAI';
      harga :=7200000;
     end;
     if produk ='2' then
      begin
      barang :='HJC';
      harga :=8000000;
      end;
     if produk ='3' then
      begin
       barang:='AGV';
       harga := 3000000;
      end;
      if produk='4' then
       begin
         barang:='SHOEI';
         harga := 3700000;
       end;
       if produk='5' then
         begin
          barang:='KABUTO';
           harga :=4000000;
      end;
 end;
     2:begin
//==========================================================JAKET==========================================================
            kelompok:='JAKET';

     writeln('                                           <=====================================');
     writeln('                                             NO  PILIH JAKET                    ');
     writeln('                                             1.  CONTIN                         ');
     writeln('                                             2.  RESPIRO                        ');
     writeln('                                             3.  DAINESSE                       ');
     writeln('                                             4.  KOMINE                         ');
     writeln('                                             5.  ALPHINESTAR                    ');
     writeln('                                            =====================================>');
     write  ('                                            PILIH PRODUK YANG AKAN DIBELI : '); 			readln (produk);

           if produk='1'then
              begin
                barang:='CONTIN';
                harga :=1000000;
              end;
           if produk='2' then
               begin
                  barang :='RESPIRO';
                     harga :=1200000;
               end;
           if produk ='3' then
                begin
                  barang :='DAINESSE';
                     harga :=7200000;
               end;
           if produk='4' then
                begin
                  barang:='KOMINE';
                   harga :=1900000;
                end;
           if produk='5' then
                begin
                  barang:='ALPHINESTAR';
                   harga :=3500000;
                end;

  end;



     3:begin
//=================================================INTERCOM===============================================================

            kelompok:='INTERCOM';

     writeln('                                       =====================================>');
     writeln('                                        NO  PILIH INTERCOM                 ');
     writeln('                                        1.  SENA 20S                       ');
     writeln('                                        2.  SENA 30K                       ');
     writeln('                                        3.  SENA 30K DUAL PACK             ');
     writeln('                                       <=====================================');
     write  ('                                       PILIH PRODUK YANG AKAN  DIBELI: '); 		readln (produk);

        if produk='1' then
            begin
             barang :='SENA20S';
              harga :=320000;
            end;
         if produk='2' then
             begin
               barang :='SENA 30K';
                harga := 4200000;
             end;
          if produk='3' then
            begin
             barang:='SENA 30K DUAL PACK';
              harga := 8000000;
            end;

  end;


      4:begin
//================================================SARUNGTANGAN=============================================================
            kelompok:='SARUNG TANGAN';

     writeln('                                      =====================================>');
     writeln('                                       NO  PILIH SARUNG TANGAN            ');
     writeln('                                       1.  INVENTZO                       ');
     writeln('                                       2.  DAINESSE                       ');
     writeln('                                       3.  KOMINE                         ');
     writeln('                                       4.  ALPHINESTAR                    ');
     writeln('                                      <====================================');
     write  ('                                       PILIH PRODUK YANG AKAN DIBELI : '); 		readln (produk);

    if produk='1' then
        begin
          barang:='INVENTZO';
            harga :=280000;
        end;
    if produk='2' then
        begin
          barang:='DAINESSE';
           harga := 1000000;
        end;
     if produk='3' then
         begin
           barang:='KOMINE';
             harga :=700000;
         end;
     if produk='4' then
          begin
            barang:='ALPHINESTAR';
             harga := 900000;
          end;
end;


//======================================================KEMBALI KE MENU UTAMA=============================================

     5 : begin

       end;
end;
        toth := harga;
        if menu<=5 then
end;


//====================================================PROCEDURE 2==========================================================
procedure cetakbill(var x:arr_jual );
begin
     clrscr;

writeln('    ________________________________________________________');
writeln('   |              FARIDZ RIDING APPAREL                     |');
writeln('   |            PERUM BUMI MALAYU ASRI BLOK C-1             |');
writeln('   |                 082219738296                           |');
writeln('   |========================================================|');
writeln('   |                  STRUK PEMBELIAN                       |');
writeln('   |========================================================|');
writeln('   | Nama Pembeli           : ',nb  );
writeln('   | Alamat Pembeli         : ',alamat );
writeln('   | Nomor Handphone        : ',nope );
writeln('   | Jenis produk           : ',kelompok);
writeln('   | Produk yang dibeli     : ',barang);
writeln('   | Ongkos * hanya untuk dropship : ' ,ongkos);
		if nkota=0 then
			 toth := toth
	     else
		if nkota>=2 then
			toth := ongkos + (toth*nkota);
	     
 
writeln('   | Total Yg Harus Dibayar : Rp. ',toth );
writeln('   |========================================================|');
write  ('   | Uang Anda Adalah       : Rp. ');readln(ua);
                                           kem := ua - toth;
                                           if  kem < 0 then
                                           begin
                                               writeln('   | Uang anda tidak mencukupi');
                                              writeln('   |========================================================|');
                                           end
                                           else
                                           begin
     writeln('   | Kembalian Uang Anda    : Rp. ',kem:0:0);
     writeln('   |==========================================================|');
     writeln('               TERIMA KASIH TELAH BERBELANJA DI            ');
     writeln('                     FARIDZ RIDING APPAREL      '    );
     writeln('             SIMPAN STRUK INI SEBAGAI BUKTI PEMBAYARAN');

                                           end;
end;

//======================================================FUNCTION SEARCH==================================================

function searching (kelompok : string ;  data :arr_jual): boolean;
var
	i : integer;
begin
	searching:= false;
	for i:= 1 to 16 do
	begin
		if (kelompok = data[i].merk) then
			searching:= true;
	end;
end;
//======================================================PROCEDURE SEARCH==================================================
procedure search;
begin
        writeln('MASUKAN BARANG YANG AKAN DICARI ( JENISPRODUK MERKPRODUK) : ' );
	readln(caribarang);  readln(caribarang);
	if (searching(caribarang, jual1) = true) then
		writeln('BARANG DITEMUKAN , SILAHKAN DIPESAN')
	else
		writeln('MAAF , BARANG TIDAK TERSEDIA ');
end;

//====================================================PROCEDURE OPENING===================================================
Procedure Awal;
var
   s : string;

begin
      writeln('                                        Selamat datang di FARIDZ RIDING APPAREL');
      writeln('Silahkan masukan nama anda :'); readln(nb);
      writeln('Alamat lengkap : ' );    readln(alamat);
      writeln('Nomor HP : ');	readln(nope);


end;
//=============================================PROCEDURE INPUTKOTA=============================================
procedure inputkota(var arrkota1 : arrkota);
var
        i : integer;
begin
        clrscr;
        writeln('Masukkan banyaknya jumlah kota dropship(maksimum 6)');
        readln(nkota);
                if ((nkota <= 0) OR (nkota > 6)) then
                        repeat
                        clrscr;
                        writeln('Tidak boleh kurang dari 0 dan atau lebih dari 6 , silahkan ulangi lagi');
                        readln(nkota);
                        until ((nkota > 0) AND (nkota <= 6));
                if ((nkota > 0) AND (nkota <= 6)) then
                        begin
                        for i := 1 to nkota do
                                begin
                                clrscr;
                                writeln('Masukkan nama kota ke ', i);
                                readln(arrkota1[i].namakota);
                                writeln('Masukkan harga ongkir ke ', i);
                                write('Rp.');
                                readln(arrkota1[i].ongkos);
                                end;
                        end
end;
//================================================================================================================================
procedure sort(arrkota1 : arrkota);
var
        i, z : integer;
        dummyNama : string;
        dummyongkos : real;
begin
        for z := 1 to nkota - 1 do
                for i := 1 to nkota - z do
                        if arrkota1[i].namakota > arrkota1[i+1].namakota then
                        begin
                                dummyNama := arrkota1[i].namakota;
                                arrkota1[i].namakota := arrkota1[i+1].namakota;
                                arrkota1[i+1].namakota := dummyNama;
//==============harga
				dummyongkos := arrkota1[i].ongkos;
                                arrkota1[i].ongkos := arrkota1[i+1].ongkos;
                                arrkota1[i+1].ongkos := dummyongkos;
                        end;


clrscr;
        writeln('Data sedang di sorting');
	delay(3000);
	writeln('Hasil sorting : ' );
	for i := 1 to nkota  do
        begin
                writeln(arrkota1[i].namakota, ' Rp.', arrkota1[i].ongkos:0:0);

        end;    totalongkos := 0 ;
       repeat

	totalongkos := totalongkos+arrkota1[i].ongkos;
	i := i-1;
	until i = nkota;
                       writeln('Total ongkos : Rp. ' , totalongkos:0:0); READLN;

end;
//=====================================================PROGRAM UTAMA======================================================
begin

     toth := harga;
     clrscr;
     Awal;
     clrscr;
          repeat
begin
     clrscr;
     writeln('                                 ============================================> ');
     writeln('                                   MENU PEMBELIAN PERLENGKAPAN TOURING   ');
     writeln('                                   1. CEK KETERSEDIAAN BARANG      ');
     writeln('                                   2. LIST BARANG  ');
     writeln('                                   3. TAGIHAN    ');
     writeln('                                   4. MENU DROPSHIPPER   ');
     writeln('                                   5. AKHIRI PEMBELIAN ' );
     writeln('                                             PILH MENU : ');
     writeln('                                 <============================================ ');
								read(pilihan);

case pilihan of
     1:begin
       clrscr;
    search;
end;
     2:begin
      clrscr;
       halamanutamakatalog(katalog)
end;
    3:begin
       cetakbill(jual1);
end;


     4:begin
	inputkota(datakota);
         sort(datakota);
end;
     5:begin
 clrscr;
     writeln('FARIDZ RIDING APPAREL');
     writeln('FOR BETTER EXPRERIENCE AND SAFETY RIDING');
      readln;
       end;

end;
readln;
jual1[1].merk:='HELM ARAI';
jual1[2].merk:='HELM HJC';
jual1[3].merk:='HELM AGV';
jual1[4].merk:='HELM SHOEI';
jual1[5].merk:='JAKET CONTIN';
jual1[6].merk:='JAKET RESPIRO';
jual1[7].merk:= 'JAKET DAINESSE';
jual1[8].merk:= 'JAKET KOMINE';
jual1[9].merk:='JAKET ALPHINESTAR';
jual1[10].merk:='INTERCOM SENA 20S';
jual1[11].merk:= 'INTERCOM SENA 30K';
jual1[12].merk:= 'INTERCOM SENA 30K DUAL PACK';
jual1[13].merk:= 'SARUNG TANGAN INVENTZO';
jual1[14].merk:='SARUNG TANGAN ALPHINESTAR';
jual1[15].merk:='SARUNG TANGAN DAINESSE';
jual1[16].merk:='SARUNG TANGAN KOMINE';
end;


until (pilihan=5);
end.

