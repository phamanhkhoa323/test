import 'dart:math';
void main() {
  xuLy();
}

//cau1-------------------------------------------------
List layDanhSachSoLe(List l){
  var ls = [];
  for(var i in l){
    if(i % 2 != 0){
      ls.add(i);
    }
  }
  return ls;
}
//cau2-------------------------------------------------
List layDanhSachSoChan(List l){
  var ls = [];
  for(var i in l){
    if(i % 2 == 0){
      ls.add(i);
    }
  }
  return ls;
}
//cau3-------------------------------------------------
String docTenThang(var n){
  if(n > 12){
    return 'Thang khong duoc lon hon 12';
  }
  switch(n){
    case 1: return 'January';
    case 2: return 'February';
    case 3: return 'March';
    case 4: return 'April';
    case 5: return 'May';
    case 6: return 'June';
    case 7: return 'July';
    case 8: return 'August';
    case 9: return 'September';
    case 10: return 'October';
    case 11: return 'November';
    default:return 'December';     
  }
}
//cau4-------------------------------------------------
String docSo(String hang, String so){
  if(hang == 'Chuc'){
    hang = 'Muoi ';
  }
  switch(so){
    case '0': return hang == 'Muoi '?'Le ':'';
    case '1': return 'Mot ' + hang;
    case '2': return 'Hai ' + hang;
    case '3': return 'Ba ' + hang;
    case '4': return 'Bon ' + hang;
    case '5': return 'Nam ' + hang;
    case '6': return 'Sau ' + hang;
    case '7': return 'Bay ' + hang;
    case '8': return 'Tam ' + hang;
    default: return 'Chin ' + hang;
  }
  
}
String docSoThanhTiengViet(var n){
  String so = n.toString();
  String chuso='',hang='';
 for(var i = 0; i < 3; i++){
   if(i == 0){
     hang = 'Tram ';
   }else if(i == 1){
     hang = 'Chuc';
   }else{
      hang = '';
   }
   chuso +=  docSo(hang,so.substring(i, i + 1));
 }
  return chuso;
}
//cau5-------------------------------------------------
bool kiemTraSoNguyenTo(var n){
  for(var i = 2; i < n; i++){
    if(n % i == 0){
      return false;
    }
  }
  return true;
}
//cau6-------------------------------------------------
bool kiemTraSoHoanThien(int n)
{
 int s=0;
 for(int i=1;i<n;i++)
 {
 if(n%i==0) s=s+i;
 }
 if(s!=n) return false;
 return true;
}
List chuyenSoSangList(int a){ //ham nay 7,8 xai chung
  var ls = [];
  while(a>0){
    ls.add(a%10);
    a=a~/10;
  }
  return ls;
}
//cau7-------------------------------------------------
int timSoLonNhatTrongList(var ls){
  int kq =ls[0];
    for(var i in ls){
    if(i > kq){
      kq=i;
    }
  }
  return kq;
}
int chuSoLonNhatCuaSo(int a){
  int kq =0;
  var lst = chuyenSoSangList(a);
  kq =timSoLonNhatTrongList(lst);
  return kq;
}
//cau8-------------------------------------------------
int timSoNhoNhatTrongList(var ls){
  int kq =ls[0];
    for(var i in ls){
    if(i < kq){
      kq=i;
    }
  }
  return kq;
}
int chuSoNhoNhatCuaSo(int a){
  int kq =0;
  var lst = chuyenSoSangList(a);
  kq =timSoNhoNhatTrongList(lst);
  return kq;
}
//cau9-------------------------------------------------
int soDaoNguoc(int a){
  int kq =0;
  String tmp = "";
  var ls = chuyenSoSangList(a);
  for(var i in ls){
      tmp+=i.toString();
  }
  kq = int.parse(tmp);
  return kq;
}
//cau10-------------------------------------------------
int soLuongChuSoLonNhat(int a){
  int kq =0;
  var ls = chuyenSoSangList(a);
  int solonnhat = timSoLonNhatTrongList(ls);
  for(var i in ls){
    if(i==solonnhat){
      kq++;
    }
  }
  return kq;
}
//cau11-------------------------------------------------
int soLuongChuSoNhoNhat(int a){
  int kq =0;
  var ls = chuyenSoSangList(a);
  int sonhonhat = timSoNhoNhatTrongList(ls);
  for(var i in ls){
    if(i==sonhonhat){
      kq++;
    }
  }
  return kq;
}
//cau12-------------------------------------------------
bool kiemTraSoToanLe(var n){
  var ls = chuyenSoSangList(n);
  if(layDanhSachSoLe(ls).length==ls.length){
    return true;
  }
  return false;
}
//cau13-------------------------------------------------
bool kiemTraSoToanChan(var n){
   var ls = chuyenSoSangList(n);
  if(layDanhSachSoChan(ls).length==ls.length){
    return true;
  }
  return false;
}
//cau14-------------------------------------------------
bool kiemTraSoDoiXung(var n){
  if(soDaoNguoc(n)==n){
    return true;
  }
  return false;
}
//cau15-------------------------------------------------
bool kiemTraSoTangDanTuTraiSangPhai(var n){
  var ls = chuyenSoSangList(n);
  int tmp = ls[0];
  for(var i in ls){
     if(i<tmp){
       return false;
     }
      else{
       tmp =i;
     }
  }
  return true;
}
//cau16-------------------------------------------------
bool kiemTraSoGiamDanTuTraiSangPhai(var n){
  var ls = chuyenSoSangList(n);
  int tmp = ls[0];
  for(var i in ls){
     if(i>tmp){
       return false;
     }
     else{
       tmp =i;
     }
  }
  return true;
}
//cau17-------------------------------------------------
int UCLN(int a, int b){
 if (b == 0) return a;
    return UCLN(b, a % b);
}
//cau18-------------------------------------------------
int BCNN(int a, int b){
  return (a *b)~/UCLN(a,b);
}
//cau19-------------------------------------------------
double giaiPTBacNhat(int a, int b){
return a/b;
}
//cau20-------------------------------------------------
void giaiPTBacHai(var a, var b, var c){
  var x1,x2;
  int delta;
    if(a == 0) {
        // a== 0 phuong trinh tro thanh phuong trinh bac mot bx + c = 0
        if(b == 0) {
            if (c == 0) {
                print( "Phuong trinh vo so nghiem" );
            } else {
                print( "Phuong trinh vo nghiem" );
            }
        } else {
            print( "Phuong trinh co nghiem duy nhat: " + (-c/b).toString() );
        }
    } else {
        delta = b*b - 4*a*c;
        if(delta > 0) {
            x1 = (-b+sqrt(delta))/(2*a);
            x2 = (-b-sqrt(delta))/(2*a);
            print( "Nghiem thu nhat x1 = " + x1.toString() );
            print( "Nghiem thu hai x2 = "+ x2.toString() );
        } else if ( delta == 0) {
            print( "Phuong trinh co nghiem kep: x1 = x2 = " + (-b/2*a).toString() );
        } else {
            print( "Phuong trinh vo nghiem" );
        }
    }
}
//cau21-------------------------------------------------
int tinhTongDaySoCoNSo(int n){
  int kq =0;
  for(var i = 0; i<=n;i++){
    kq+= i;
  }
return kq;
}
//cau22-------------------------------------------------
int timNDeTongDaySoCoNSoLonHon10000(){
  int tong =0;
  int kq=0;
  for(var i = 0; tong <10000 ;i++){
    tong+= i;
    if(tong>=10000){
      kq=i;
    }
  }
return kq;
}
//cau23-------------------------------------------------
bool kiemTraNamNhuan(var n){
  return (((n % 4 == 0) && (n % 100 != 0)) || (n % 400 == 0)); 
}
//cau24-------------------------------------------------
String soNgayCuaThang(var thang, var nam){
  if(thang > 12){
    return 'Thang khong duoc lon hon 12';
  }
  switch(thang){
    case 1: 
    case 3:
    case 5: 
    case 7: 
    case 8: 
    case 10:
    case 12: return '31';
    case 2: return kiemTraNamNhuan(nam)?'29':'28';
    default:return '30';     
  }
}
//cau25-------------------------------------------------
String timNgayKeTiep(var ngay, var thang, var nam){
  var songaycuathang = int.parse(soNgayCuaThang(thang,nam));
  if(thang > 12){
    return 'Tháng không ???c l?n h?n 12';
  }
  if(ngay > songaycuathang ){
     return 'Ngay cua ban nhap lon hon so ngay trong thang nay';
  }
  else{
     if(ngay==songaycuathang){
       if(thang==12){
         nam++;
         thang =1;
         ngay=1;
       }
       else{
       thang++;
       ngay = 1;
       }
     }
     else{
       ngay++;
     }
  }
  return 'Ngay ke tiep = $ngay/$thang/$nam';
}
//cau26-------------------------------------------------
String timNgayTruoc(var ngay, var thang, var nam){
  var songaycuathang = int.parse(soNgayCuaThang(thang,nam));
  if(thang > 12){
    return 'Tháng không ???c l?n h?n 12';
  }
  if(ngay > songaycuathang ){
     return 'Ngay cua ban nhap lon hon so ngay trong thang nay';
  }
  else{
     if(ngay==1){
       if(thang==1){
          ngay =31;
          nam--;
          thang = 12;
       }
       else{
       thang--;
       ngay = soNgayCuaThang(thang, nam);
       }
     }
     else{
       ngay--;
     }
  }
  return 'Ngay truoc = $ngay/$thang/$nam';
}
//cau27-------------------------------------------------
String tinhNgayLaNgayThuBaoNhieuTrongNam(int ngay, int thang, int nam){
  int kq = 0;
   var songaycuathang;
  if(thang<=12){
     songaycuathang = int.parse(soNgayCuaThang(thang,nam));
  }
  else{
    return 'Thang khong duoc lon hon 12';
  }
  if(ngay > songaycuathang ){
     return 'Ngay cua ban nhap lon hon so ngay trong thang nay. So ngay thang nay = $songaycuathang';
  }
  else{
     for(var i = 1; i<=thang;i++){
       if(i==thang){
        kq += ngay;
       }
       else{
         kq+= int.parse(soNgayCuaThang(i, nam));
       }
     }
  }
  return kq.toString();
}
//cau28-------------------------------------------------
bool kiemTraPhanTuTangDanTrongDanhSach(var l){
  int tmp = l[0];
  for(var i in l){
     if(i<tmp){
       return false;
     }
      else{
       tmp =i;
     }
  }

  return true;
}
//cau29-------------------------------------------------
bool kiemTraPhanTuGiamDanTrongDanhSach(var l){
  int tmp = l[0];
  for(var i in l){
     if(i>tmp){
       return false;
     }
      else{
       tmp =i;
     }
  }

  return true;
}
//cau30-------------------------------------------------
bool kiemTraPhanTuTrongDanhSachCoBangNhauHayKhong(var l){
  int tmp = l[0];
  for(var i in l){
     if(i!=tmp){
       return false;
     }
  }

  return true;
}
Map cacYeuCau(){
  var ls = Map<int, String>();
  ls[0] = "Câu 1. Lay danh sach cac so le trong 1 danh sach cac so nguyen.";
  ls[1]="Câu 2. Lay danh sach cac so chan trong 1 danh sach cac so nguyen.";
  ls[2]="Câu 3. Doc ten cua thang N trong nam";
  ls[3]="Câu 4. Doc so N co 3 chu so thanh tieng viet khong dau.";
  ls[4]="Câu 5. Kiem tra so nguyen N co phai so nguyen to khong?";
  ls[5]="Câu 6. Kiem tra so nguyen N co phai so hoan thien khong?";
  ls[6]="Câu 7. Tim chu so lon nhat cua so nguyen duong N.";
  ls[7]="Câu 8. Tim chu so nho nhat cua so nguyen duong N.";
  ls[8]="Câu 9. Tim so dao nguoc cua so nguyen duong N.";
  ls[9]="Câu 10. Hay dem so luong chu so lon nhat cua so nguyen duong N.";
  ls[10]="Câu 11. Hay dem so luong chu so nho nhat cua so nguyen duong N.";
  ls[11]="Câu 12. Hay kiem tra so nguyen duong N co toan chu so le hay khong?";
  ls[12]="Câu 13. Hay kiem tra so nguyen duong N co toan chu so chan hay khong?";
  ls[13]="Câu 14. Hay kiem tra so nguyen duong N co phai la so doi xung hay khong?";
  ls[14]="Câu 15. Hay kiem tra cac chu so cua so nguyen duong N co tang dan tu trai sang phai hay khong?";
  ls[15]="Câu 16. Hay kiem tra cac chu so cua so nguyen duong N co giam dan tu trai sang phai hay khong?";
  ls[16]="Câu 17. Cho 2 so nguyen duong a va b. Hay tim uoc chung lon nhat cua 2 so nay.";
  ls[17]="Câu 18. Cho 2 so nguyen duong a va b. Hay tim boi chung lon nhat cua 2 so nay.";
  ls[18]="Câu 19. Giai phuong trinh bac nhat: ax + b = 0";
  ls[19]="Câu 20. Giai phuong trinh bac hai: ax2 + bx + c = 0";
  ls[20]="Câu 21. Tinh tong cua day so sau: S(N) = 1 + 2 + 3 + ... + N";
  ls[21]="Câu 22. Tim so nguyen duong N nho nhat sao cho 1 + 2 + ... + N > 10000";
  ls[22]="Câu 23. Kiem tra nam N co phai la nam nhuan hay khong?";
  ls[23]="Câu 24. Hay cho biet thang N co bao nhieu ngay?";
  ls[24]="Câu 25. Tim ngay ke cua ngay D thang M nam Y.";
  ls[25]="Câu 26. Tim ngay truoc cua ngay D thang M nam Y.";
  ls[26]="Câu 27. Tinh xem ngay d thang M nam Y la ngay thu bao nhieu trong nam?";
  ls[27]="Câu 28. Kiem tra cac phan tu trong danh sach so nguyen co tang dan hay khong?";
  ls[28]="Câu 29. Kiem tra cac phan tu trong danh sach so nguyen co giam dan hay khong?";
  ls[29]="Câu 30. Hay cho biet cac phan tu trong danh sach so nguyen co bang nhau hay khong?";
  return ls;
}
void xuLy(){
  var ls = [1,2,3,4,5,6,7,8,9];var chucnang;
  var lsyeucau = cacYeuCau();
  //Câu 1
  print(lsyeucau[0]);
  print(layDanhSachSoLe(ls));
  //Câu 2
  print(lsyeucau[1]);
  print(layDanhSachSoChan(ls));
  //Câu 3
  print(lsyeucau[2]);
  print(docTenThang(1));
  //Câu 4
  print(lsyeucau[3]);
  print(docSoThanhTiengViet(333));
  //Câu 5
  print(lsyeucau[4]);
  kiemTraSoNguyenTo(8)?print('Day la so nguyen to'):print('Day khong phai la so nguyen to');
  //Câu 6
  print(lsyeucau[5]);
  kiemTraSoHoanThien(6)?print('Day la so hoan thien'):print('Day khong phai la so hoan thien');
  //Câu 7
  print(lsyeucau[6]);
  print(chuSoLonNhatCuaSo(40399));
  //Câu 8
  print(lsyeucau[7]);
  print(chuSoNhoNhatCuaSo(439));
  //Câu 9
  print(lsyeucau[8]);
  print(soLuongChuSoLonNhat(434));
  //Câu 10
  print(lsyeucau[9]);
  print(soLuongChuSoNhoNhat(400));
  //Câu 11
  print(lsyeucau[10]);
  print(soDaoNguoc(200));
  //Câu 12
  print(lsyeucau[11]);
  print(kiemTraSoToanLe(111));
  //Câu 13
  print(lsyeucau[12]);
  print(kiemTraSoToanChan(201));
  //Câu 14
  print(lsyeucau[13]);
  print(kiemTraSoDoiXung(12321));
  //Câu 15
  print(lsyeucau[14]);
  print(kiemTraSoTangDanTuTraiSangPhai(1123));
  //Câu 16
  print(lsyeucau[15]);
  print(kiemTraSoGiamDanTuTraiSangPhai(3211));
  //Câu 17
  print(lsyeucau[16]);
  print(UCLN(11,7));
  //Câu 18
  print(lsyeucau[17]);
  print(BCNN(2,4));
  //Câu 19
  print(lsyeucau[18]);
  print(giaiPTBacNhat(2,4));
  //Câu 20
  print(lsyeucau[19]);
  giaiPTBacHai(1,-4,4);
  //Câu 21
  print(lsyeucau[20]);
  print(tinhTongDaySoCoNSo(141));
  //Câu 22
  print(lsyeucau[21]);
  print(timNDeTongDaySoCoNSoLonHon10000());
  //Câu 23
  print(lsyeucau[22]);
  print(kiemTraNamNhuan(2000));
  //Câu 24
  print(lsyeucau[23]);
  print(soNgayCuaThang(1,2000));
  //Câu 25
  print(lsyeucau[24]);
  print(timNgayKeTiep(28,2,2001));
  //Câu 26
  print(lsyeucau[25]);
  print(timNgayTruoc(1,3,2001));
  //Câu 27
  print(lsyeucau[26]);
  print(tinhNgayLaNgayThuBaoNhieuTrongNam(112,2,2001));
  //Câu 28
  print(lsyeucau[27]);
  print(kiemTraPhanTuTangDanTrongDanhSach([4,4,4,4]));
  //Câu 29
  print(lsyeucau[28]);
  print(kiemTraPhanTuGiamDanTrongDanhSach([4,4,4,4]));
  //Câu 30
  print(lsyeucau[29]);
  print(kiemTraPhanTuTrongDanhSachCoBangNhauHayKhong([4,1,4,4]));
}