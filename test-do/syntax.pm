# print "Hello, world \n bad boy";

# $perl -e 'print "Hello World\n"';

# print "Hello 

# world\n";

# print 'Hello, world\n';

# $a = 10;

# print "Value of a = $a\n";
# print 'Value of a = $a\n';

# $a = 10;

# $var = <<"EOF";

# $result = "This is \"number\"";

# print "$result\n";

# print "\$result\n";

#có dấu "" vì có chứa kí tự \n để xuống dòng
# $str = "Welcome to \ntutorialspoint.com!";
# print "$str\n";

# $str = 'Welcome to \ntutorialspoint.com!';
# print "$str\n";
#có dấu \u đặt biết là uppercase chữ cái đó sẽ viết hoa
# $str = "\uwelcome to \ututorialspoint.com!";
# print "$str\n";

#có dấu \U đặt biệt là uppercase có nghĩa là cả line đó sẽ viết hoa
# $str = "\UWelcome to tutorialspoint.com!";
# print "$str\n";

#dấu gạch chéo ngược đứng trước các từ khóa ngoại trừ số
# $str = "\QWelcome to tutorialspoint's family 123";
# print "$str\n";

#variable
# $age = 25;          
# $name = "John Paul";
# $salary = 1445.50;   

# print "$age\n";
# print "$name\n";
# print "$salary";

# @ages = (25, 30, 40);             
# print "@ages[0]\n";
# print "@ages[1]\n";
# print "@ages[2]\n";

# @names = ("John Paul", "Lisa", "Kumar");
# print "@names[0],\n";
# print "@names[1],\n";
# print "@names[2]\n";

# @copy = @names
# $size = @names;

# print "@copy\n";
# print "$size";

# @names = ('John Paul', 'Lisa', 'Kumar', 'hello');

# @copy = @names;

# $ tên biến được gán cho giá trị là mảng thì giá trị sẽ bị gán là số phần tử của mảng 
# $size = @names;

# print $size;

# print "Given names are : @copy\n";
# print "Number of names are : $size\n";

# %data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);

# print "\$data{'John Paul'} = $data{'John Paul'}\n";

# print "\$data{'Lisa'} = $data{'Lisa'}\n";

# print "\$data{'Kumar'} = $data{'Kumar'}\n";

# https://www.tutorialspoint.com/perl/perl_variables.htm

# https://www.programiz.com/dsa/stack

# http://tailieudientu.lrc.tnu.edu.vn/Upload/Collection/brief/brief_6606_12918_GT00225.pdf


# my ($age, $street, $info) = (40, '123 Main Street', 0);
# print($info);

# my $rand__num = 5;
# $rand__num += 1;
# say "Number Incremented", $rand_num;

# $name = 'quan tinh';
# $street = 'vo nguyen giap';

# $my_info = "$name lives on $street";

# print($my_info);
# $my_info = qq{};

# sub findPair {
#     my ($array, $target) = @_;
#     my %complements;
#     for (my $i = 0; $i < @$array; $i++) {
#         my $complement = $target - $array->[$i];
#         if (exists $complements{$complement}) {
#             return [$complements{$complement}, $i];
#         } else {
#             $complements{$array->[$i]} = $i;
#         }
#     }
#     return undef;
# }

# my $array = [5, 2, 6, 8, 1, 9];

# my $target = 10;

# my $pair_indices = findPair($array, $target);

# if ($pair_indices) {
#     my ($i, $j) = @$pair_indices;
#     print "First: $array->[$i], Second: $array->[$j], Total:  $target";
# } else {
#     print "No pair adds up to the target sum";
# }

# ================Structed data algirthusm=======================
# sub find_pair{
# my ($nums, $target) = @_;
# for (my $i=0; $i <  @$nums - 1; $i++) {
#     for(my $j=$i+1; $j < @$nums; $j++) {
#         if($nums->[$i]+$nums->[$j]==$target) {
#             print "Pair found ($nums->[$i], $nums->[$j])\n";
#         }
#     }
# }
# return "Pair not found";
# }

# sub findPair{
#     my ($array, $sum) = @_;
#     for (my $i = 0; $i < @$array - 1; $i++) {
#         for (my $j = $i + 1; $j < @$array; $j++) {
#             if($array->[$i] + $array->[$j] == $sum) {
#                 print "First: $array->[$i], Second: $array->[$j]\n";
#             }
#         }
#     }
#     return "Pair not found";
# }

# my $array = [8, 7, 2, 5, 3, 1];
# my $sum = 10;

# findPair($array, $sum);


# my $str = 'perl';
#Sử dụng hàm reverse() cho chuỗi 
# my $reverse = reverse($str);

#Chuyển đổi các phần tử trong chuỗi thành 1 phần tử trong mảng 
# my @array = split("", $str);
# print "@array\n";

# for(my $i = $#arr; $i>=0; $i--) {
#     print "$arr[$i]";
# }
# print "\n";

# $skill    = "Perl";
# $killName = \$skill;
# print ref($killName);

#Scalar
# $stringScalar = "Perl";
# $numScalar = 100;
# $string = v85.78.73.88;

# print "$stringScalar\n";
# print "$numScalar\n";
# print "$string\n";
# print $stringScalar."-".$numScalar."-".$string."\n";

#Arrays
# @skillName = ("Perl\n", "Python\n", "5\n", "3\n");
# push(@arr, "javascript\n");
# unshift(@skillName, "javascript\n");
# shift(@skillName);

# pop(@arrnew);

# scalar @skillName;
#kích thước mảng
# print $#skillName +1;
# print @arrnew[2];

#Hashes
# %skillsExp = (
#     "Perl" => 5,
#     Python => 2,
#     javascipt => (
#         'angular',
#         'vue',
#         'reactjs'
#     )
# );

# print %skillsExp;

# @marks = (65, 76, 89, 90, 55, 44);
# print "@marks[2...5]\n";
#Thay thế 1 đoạn phần tử trong mảng
# splice(@marks, 2, 3, 98..100);
# print "@marks\n";

# ============string=================
#Split chuyển đổi chuỗi thành 1 mảng 
# $str = 'abcabc';
# @arr = split("", $str);
# print @arr;

#Join chuyển đổi mảng thành chuỗi ngăn cách nhau bởi
# @arr = (1, 2, 3, 4);
# $str = join(", ", @arr);
# print $str;

#Split chuyển đổi chuỗi thành 1 mảng 
# $experiences = "Perl=python=Java=Unix=Jython=DNS";
# @experiences = split("=", $experiences);
# print "@experiences\n";

#split chuyển đổi chuỗi thành chuỗi ngăn cách nhau bởi dấu bằng thành mảng
# $experiences = "Perl=python=Java=Unix=Jython=DNS";
# @experiences = split("=", $experiences);
# print "@experiences\n";
#Join chuyển đổi mảng thành chuỗi ngăn cách nhau bởi |
# @experiences = join("|", $experiences);
# print "$experiences\n";

#Sắp xếp các phần tử trong mảng theo thứ tự từ nhỏ đến lớn
# @array = (5, 4, 6, 7, 3, 1, 2);
# @sort = sort(@array);
# print "$array[1]";

#Gộp hai hoặc nhiều mảng lại với nhau
# @arr1 = (1...5);
# @arr2 = (6..10);
# @arrMerge = (@arr1, @arr2);
# print "@arrMerge\n";

#Hashes là thiết lặp cho cặp giá trị key value
# %skillsExperiences = (Unix => 5, Perl => 5, Python => 2, Java => 1);
#Truy xuất lấy giá trị như kiểu object
# print $skillsExperiences{"Perl"}, "\n";

#Lưu lại các keys của hasher(obj) vào mảng và in ra
# @skillsExperiencesKeys = keys %skillsExperiences;
# print "Keys: @skillsExperiencesKeys\n";

#Lưu lại các values của hasher(obj) vào mảng mới và in ra
# @skillsExperiencesValues = values %skillsExperiences;
# print "Values: @skillsExperiencesValues\n";

#Kiểm tra key đó có tồn tại trong (object hasher) hay không 
# if(exists($skillsExperiences{"Unix"})) {
#       print "Exits!!\n";
# } else {
#       print "Not Exits!!\n";
# }

#Điều kiện phủ định
# if(!exists($skillsExperiences{"Unix"})) {
#       print "Not Exits!!\n";
# } else {
#       print "Exits!!\n";
# }

#In ra số phần tử trong mảng keys
# print scalar @skillsExperiencesKeys, "\n";

#In ra số phần tử trong mảng value
# print scalar @skillsExperiencesValues, "\n";

#Cập nhập giá trị cho obj hasher có key Oracle = 2
# $skillsExperiences{"Oracle"} = 4;

#In ra giá trị của key mới cập nhập giá trị vào mảng 
# print $skillsExperiences{"Oracle"}, "\n";

#Xóa giá trị cho obj hasher có key "Java"
# delete $skillsExperiences{"Java"};
# print $skillsExperiences;

# if(exists($skillsExperiences{"Java"})) {
#     print "Exits!!\n";
# } else {
#     print "Not Exits!!\n";
# }

#Phương thức map() map{expression} @tên mảng
# @skills = (
#     "Perl", 
#     "Python", 
#     "Java", 
#     "Unix"
# );

#Lặp qua mảng và nối chuỗi mẫu vào quy trình lặp và lưu vào biến và nối tiếp với chuỗi sau
# @skills = map {$_, "-Progammer"} @skills;
# print "@skills\n";

# Lặp qua 4 phần tử key value
# %skills = map { $_ => 4} @skills;

# print keys %skills, "\n";

#Phương thức grep() grep{expression} @tên mảng tác dụng loop qua các phần tử và lọc ra theo kí tự phần tử trong mảng
# @skills = (
#     "Perl", 
#     "Python", 
#     "Java", 
#     "Unix"
# );

# @skills = grep { /^P/ } @skills;
# @skills = grep { !/^P/ } @skills;
# %skills = map { $_ => 4} grep { /^P/ } @skills;

# print %skills, "\n";

#!/usr/bin/perl

# khai báo biến my ở bên ngoài thì sử dụng được trong hàm và ngoài hàm 
# my bên trong thì được bên ngoài không sứ dụng được không có tính kế thừa 
# local trong khối con có thể kế thừa cha
# our trong khối con có thể kế thừa sử dụng
# sub sub1 {
#     my $myString = "quantinh";
#     print "Inside a sub1: $myString\n";
#     sub2();
# }

# sub sub2 {
#     print "Inside a sub2: $myString\n";
# } 

# print "Ouside a subparent: $myString\n";

# sub1();

# my $myString = "quantinh";
# our $myString = "quantinh";
# our $myString = "quantinh";

# print "Outside a subroutine: $myString\n";

# sub myFunction {
#     print "Inside a subroutine $myString\n";
# }

# myFunction();

use strict;
use warnings;

# my $string = "Perl"
# my $string = "Perl";

# print "programmer is $string";

# my @skills = ("Perl", "Python", "Java", "Unix", "Shell");

# if($skills[-1] eq "Java") {
#     print "if ... true\n";
# } else {
#     print "else ... True";
# }

# unless (scalar @skills == 5) {
#     print "unless...True\n";
# } 
# elsif($skills[-1] eq "Java") {
#     print "True!!\n";
# } 
# else {
#     print "True!!\n";
# }

# my $input = <STDIN>;
# chomp($input);

# (length($input) == 4) ? print "Length is 4\n":print "Length is not 4\n";


# my @errors = (
#     "405 - ERROR", 
#     "100 - OK", 
#     "101 - OK", 
#     "406 - ERROR", 
#     "102 -OK"
# );
# số lượng phần tử trong mảng 
# print scalar @error;

# my $i = 0;
# my $count = 0;

# # Nếu i bé hơn số lượng phần tử trong mảng thì lặp qua
# while ( $i < scalar @errors) {
#     # Nếu i có chứa chuỗi ERROR thì count tăng dần khi loop qua các phần tử trong mảng
#     if( $errors[$i] =~ /ERROR/ ) {
#         $count++;
#     }
#     #Nếu không chưa thì i tăng giá trị khi loop qua
#     $i++;
# }

# Nếu i bé hơn số lượng phần tử trong mảng thì lặp qua
# do {
#     # Nếu i có chứa chuỗi ERROR thì count tăng dần khi loop qua các phần tử trong mảng
#     if( $errors[$i] =~ /ERROR/ ) {
#         $count++;
#     } 
#     #Nếu không chưa thì i tăng giá trị khi loop qua
#     $i++;
# } while ( $i < scalar @errors );

# print "From do...while loop: $count\n";

# my $grepCount = grep { /ERROR/ } @errors;

# print "From grep count: $grepCount\n";

# my $n1 = 29;

# my $n2 = 20;

# my result = $n2 <=> $n1;

# print $result;
# my $sum = $num1 + $num2;

# print $sum;

# Numberic relation operators
# kiểm tra bên nào có số nhỏ hơn thì return -1 nếu lớn hơn thì return 1 nếu bằng thì 0

# String relation operators

# my $string1 = 'Perl';
# my $string2 = 'Python';
# if ($string1 le $string2) {
#     print "less than\n";
# } 

# Perl assignment operators
# my $no1 = 10;
# my $no2 = 5;
# $no1 .= $no2; 
#$no1 = $no1 + $no2
# print $no1;

# Perl logicak operators
# my @skills = ("Perl", "Python", "Java", "Unix");

#Nếu index = 0 là perl và trong mảng có độ dài phần tử là 4 thì return
# if(($skills[0] eq "Perl") and (scalar @skills == 4)) {
#       print "C-style and ope";
# }

# if(($skills[0] eq "Perl") && (scalar @skills == 4)) {
#       print "C-style and ope";
# }

# if(($skills[0] eq "Perl") or (scalar @skills == 6)) {
#       print "C-style and ope";
# }

# if(($skills[0] eq "Perl") || (scalar @skills == 6)) {
#       print "C-style and ope";
# }

# if( not( ($skills[0] eq "Perl") and (scalar @skills == 6))) {
#       print "not logical and operator";
# }

# if( ($skills[0] eq "Perl") || (scalar @skills == 7)) {
#       print "C-style and operator";
# }


#Trích xuất tên đuôi file là gì 
# my $single = q{Perl};
#Trích xuất tên đuôi file là gì 
# my $double = qq{Perl};
#Trích xuất ra các phần tử của mảng 
# my @array = qw(Perl Python 2 3 4);
#Trích xuất ra cổng máy tính tên máy tính
# my $unixCmd = qx!hostname!;

# print "$single\n";
# print "$single\n";
# print "$unixCmd\n";
# print "@array\n";

#array
# my @lines = ("google.com 100", "yahoo.com 101", "micosoft.com 102", "gitam.org 300", "au.org 301", "flipkart.com 302");

# my $msg ="org";
# sub displayComLines {
      #là đối số của hàm displayComLines
      # my $msg = shift;
      # my $msg = $_[0];
      #là đối số của hàm displayComLines
      # my $code = shift;
      # my $code = $_[1];
      #similar cách viết destructuring js
      # my ($msg, $code) = @_;
      # foreach(@lines) {
      #       #Nếu các phần tử trong mảng loop qua mà chứa kí tự .com và kí tự 101 thì in ra màn hình
      #       if($_ =~ /$msg.*$code/) {
      #             print "$_\n";
      #       }
      # }
# }
# displayComLines($msg);
# displayComLines("com", 101);

# sub appendDomain {
#       #gán mảng này cho tham số dạng mảng, nếu gán cho $_[0], thì lấy 1 phần tử đầu tiên còn nếu gán cho shift thì lỗi vì tham số dạng mảng
#       @lines = @_;
#       foreach(@lines) {
#             #Nếu các phần tử trong mảng loop qua mà chứa kí tự .com và kí tự 101 thì in ra màn hình
#             if($_ =~ /com/) {
#                   $_.=": COM";
#             #ngược lại nếu phần tử trong mảng không chứa kí tự này thì gán nối cho phần tử chuỗi trong mảng thành dạng đuôi ORG
#             } else {
#                   $_.=": ORG";
#             }
#       }
#       return(@lines);
# }
# #Gọi hàm và gán cho biến
# @lines = appendDomain(@lines);
#In ra các phần tử trong mảng đó
# print "@lines\n";

#Object hashes
# my %domainAndCodes = (
#       "google.com" => 100, 
#       "yahoo.com" => 101, 
#       "microsoft.com" => 102, 
#       "gitam.org" => 300, 
#       "au.org" => 301, 
#       "flipkart.com" => 302
# );

# sub appendDomains {
#       %domainAndCodes = @_;
#       foreach(keys %domainAndCodes) {
#             if ($_ =~ /com/) {
#                   $domainAndCodes{$_}--;
#             } else {
#                   $domainAndCodes{$_}--;
#             }
#       }
#       return(@lines);
# }
# %domainAndCodes = appendDomains(%domainAndCodes);

# while(my($key, $value) = each(%domainAndCodes)) {
#       print "$key => $value";
# }

# my %skillsExperiences = (Perl => 5, Python => 2, Unix => 5, Java => 1);
# my @skills = ("Perl", "Python", "Unix", "Java");

# sub displayLines {
#       (@lines, %skillsExperiences, @skills) = @_;
#       print "@lines\n";
#       print "%skillsAndExperiences\n";
#       print "@skills\n";
# }

# displayLines(@lines, %skillsExperiences, @skills);

# Hai cách viết mảng @array = ( ); @arr = [ ];
# Hai cách viết object %hash = ( ); $hash = { };

# my $banner = "Tutorialpoint";

# my $skills = [
#     "Perl", 
#     "Python", 
#     "Unix", 
#     "Java"
# ];

# my $domainCodes = {
#     "yahoo.com" => 101, 
#     "google.com" => 102, 
#     "gitam.org" => 401, 
#     "au.org" => 402, 
#     "microsoft.com" => 103
# };


# my @lines = [
#     "google.com 100", 
#     "yahoo.com 101", 
#     "microsoft.com 102", 
#     "gitam.org 300", 
#     "au.org 301", 
#     "flipkart 302"
# ];

# my %skillsAndExperiences = (
#     Perl => 5,
#     Python => 2,
#     Unix => 5,
#     Java => 1
# );

# my %skills = (
#     "Perl", 
#     "Python", 
#     "Unix", 
#     "Java"
# );

# sub displayLines {
#     my ($ref1, $ref2, $ref3) = @_;
#     print "@$ref1\n";
#     print %$ref2, "\n";
#     print %$ref3, "\n";
# }

# my $scalarRef = \$banner;
# print "$$scalarRef\n";
# my $arrayRef = \@skills;
# print "@$arrayRef\n";
# my $hashRef = \%domainCodes;
# print %$hashRef, "\n";

# print "@$skills\n";
# print "%$domain";
# print %$domainCodes, "\n";

# print $skills->[0], "\n";
# print $domainCodes->{"google.com"}, "\n";

# displayLines(\@lines, \%skillsAndExperiences, \%skills);

# my @domainNames = (
#     ["yahoo.com", "google.com"],
#     ["gitam.edu", "au.edu", "cbit.edu", "gayatri.edu", "avanthi.edu"],
#     [10...15]
# );

# print "@{$domainNames[0]}\n";
# print "@{$domainNames[1]}\n";
# print "@{$domainNames[2]}\n";

# print @{$domainNames[1]}[0];
# my @lines = (
#       "yahoo.com", 
#       "google.com", 
#       "gitam.edu", 
#       "au.edu", 
#       "cbit.com", 
#       "gayatri.edu", 
#       "avanthi.edu", 
#       10...15
# );

#Khởi tạo mảng rỗng
# my @aQA;
# #Lặp qua các phần tử trong mảng
# foreach(@lines) {
#       #Nếu các phần tử lặp qua chứa kí tự com thì đẩy vào mảng khởi tạo 
#       if($_ =~ /com/) {
#             push(@{$aQA[0]}, $_);
#       #Nếu các phần tử lặp qua chứa kí tự edu thì đẩy vào mảng thứ hai 
#       } elsif ($_ =~ /edu/) {
#             push(@{$aQA[1]}, $_);
#       } else {
#             push(@{$aQA[2]}, $_);
#       }
# }

#Hiển thị dạng mảng 
# print Dumper(\@aQA), "\n";

#Truy xuất kiểu cho object lặp qua object và in ra các phần tử 

# C1:
# my %hashOfArrays = (
#       "com" => ["yahoo.com", "google.com"],
#       "edu" => ["gitam.edu", "au.edu", "cbit.edu", "gayatri.com", "avanthi.edu"],
#       "number" => [10...15]
# );

# foreach(keys %$hashOfArrays) {
#       print "$_ => @{$hashOfArrays->{$_}}\n";
# }

# print $hashOfArrays{"edu"}->[2], "\n";

# C2:
# my $hashOfArrays = {
#                   "com"       =>    ["yahoo.com", "google.com"],
#                   "edu"       =>    ["gitam.edu", "au.edu", "cbit.edu", "gayatri.com", "avanthi.edu"],
#                   "number"    =>    [10...15]
# };

# foreach(keys %{$hashOfArrays}) {
#       print "$_ => @{$hashOfArrays->{$_}}\n";
# }

# print $hashOfArrays->{"com"}->[1], "\n";

# my $lines = {
#       "com"       =>    ["yahoo.com", "google.com"],
#       "edu"       =>    ["gitam.edu", "au.edu", "cbit.edu", "gayatri.com", "avanthi.edu"],
#       "number"    =>    [10...15]
# };

# my %hashOfArrays;

# foreach(@lines) {
#       if ($_ =~ /com/) {
#             make_hash("com", $_);
#       }
#       elsif ($_ =~ /edu/) {
#             make_hash("edu", $_);
#       } 
#       else {
#             make_hash("number", $_);
#       }
# }

# sub make_hash {
#       my ($key, $line) = @_;
#       if (exists($hashOfArrays{$key})) {
#             push(@{$hashOfArrays{$key}}, $line);
#       } else {
#             $hashOfArrays{$key}[0] = $line;
#       }
# }

# print Dumper(\%hashOfArrays);

# hash object trong mảng 
# my @arrayOfHashes = (
#     {
#         orderid => 100,
#         cost => 2000,
#         quantity => 3
#     },
#     {
#         name => "Tutorialspoint",
#         address => "Hyderabad"
#     },
#     {
#         brandName => "Greeks",
#         vendorName => "newWave",
#         carrierName => "bluedart"
#     }
# );

# print $arrayOfHashes[0], "\n";
# print keys %{$arrayOfHashes[1]}, "\n";
# print @{$arrayOfHashes}[0], "\n";
# print keys @{$arrayOfHashes}[1], "\n";
# print @{$arrayOfHashes}[1]->{"name"}, "\n";
# print keys %{$arrayOfHashes[1]}, "\n";
# print $arrayOfHashes[1]->{"name"}, "\n";
# print $arrayOfHashes[1]->{'name'};

# object hasher trong array 
# my @lines = (
#     "orderId: 100",
#     "cost: 2000",
#     "quantity: 3"
# );

# my @arrayOfHashes;

# foreach(@lines) {
#     my @line = split(" : ", $_);
#     $arrayOfHashes[0]->{$line[0]} = $line[1];
# }

# print Dumper(\@arrayOfHashes);

# DB acess 

# object hasher trong array 
# my @lines = (
#     "orderId: 100",
#     "cost: 2000",
#     "quantity: 3"
# );

# my @arrayOfHashes;

# foreach(@lines) {
#     my @line = split(" : ", $_);
#     $arrayOfHashes[0]->{$line[0]} = $line[1];
# }

# print Dumper(\@arrayOfHashes);

# DB access 

# my $driver    = "Pg"; 
# my $database  = "tinh_hq";
# my $dsn       = "DBI:$driver:dbname = $database; host = localhost; port = 5432";
# my $userid    = "postgres";
# my $password  = "123456";
# my $dbh       = DBI->connect($dsn, $userid, $password, { RaiseError => 1 }) or die $DBI::errstr;
# print "Opened database successfully !\n";
# my $query = qq(
#   SELECT 
#   customer_id, 
#   first_name, 
#   last_name,
#   email  
#   from 
#   customer 
#   limit 2;
# );
# my $query = ("
#   SELECT 
#   customer_id, 
#   first_name, 
#   last_name,
#   email  
#   from 
#   customer 
#   limit 1;
# ");
# my $sth = $dbh->prepare($query);
# my $rv = $sth->execute() or die $DBI::errstr;
# # Hiển thị số phần tử lấy ra 
# if($rv < 0) {
#   print $DBI::errstr;
# }
# while(my @row = $sth->fetchrow_array()) {
#   print "ID         : ".   $row[0] ."\n";
#   print "FIRSTNAME  : ".   $row[1] ."\n";
#   print "LASTNAME   : ".   $row[2] ."\n";
# }
# print "Operation done successfully !\n";
# $dbh->disconnect();

# 1)Cài đặt cpanm
# curl -L https://cpanmin.us | perl - App::cpanminus
# 2)Cài đặt Mojolicious::Plugin::Database bằng lệnh:
# cpanm Mojolicious::Plugin::Database
# 3)Cài đặt Mojolicious
# path\to\cpanm Mojolicious
# 4)Cài đặt Mojolicious::Command::generate::controller
# cpanm Mojolicious::Command::generate::controller

do "./require.pm";
# Hoặc sử dụng use

# sub1();

# Action showData
sub show() {
  my $self = shift;
  # use function connect database
  my $dbh = connect_db('learning-perl', 'localhost', '5432', 'postgres', '123456');
  # string query to database
  my $sth = $dbh->prepare( 
    qq(
      SELECT *
      FROM actor
      ORDER BY actor_id DESC
      LIMIT 5;
    )
  );
  # Show error if false 
  my $rv = $sth->execute() or die $DBI::errstr;
  # show item put out 
  if($rv < 0) {
    print $DBI::errstr;
  }
  print "Operation done successfully\n";
  my @rows;
  while (my $row = $sth->fetchrow_hashref) {
    push @rows, $row;
  }
  $sth->finish();
  $dbh->disconnect();
  return;
}

show();

