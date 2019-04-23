set names utf8;
set foreign_key_checks=0;

drop database if exists venus;
create database if not exists venus;

use venus;

create table user_info(
id int primary key not null auto_increment,
user_id varchar(16) unique not null,
password varchar(16) not null,
family_name varchar(32) not null,
first_name varchar(32) not null,
family_name_kana varchar(32) not null,
first_name_kana varchar(32) not null,
sex tinyint default 0,
email varchar(32),
status tinyint default 0,
logined tinyint not null default 0,
regist_date datetime,
update_date datetime
)
default charset=utf8;

insert into user_info values
(1,"guest","guest","インターノウス","ゲストユーザー","いんたーのうす","ゲストユーザー",0,"internous.guest@gmail.com",0,0,now(),now()),
(2,"guest2","guest2","インターノウス","ゲストユーザー2","いんたーのうす","ゲストユーザー2",0,"internous.guest2@gmail.com",0,0,now(),now());



create table product_info(
id int primary key not null auto_increment,
product_id int unique not null,
product_name varchar(100) unique not null,
product_name_kana varchar(100) not null,
product_description varchar(255),
category_id int not null not null,
price int,
image_file_path varchar(100),
image_file_name varchar(50),
release_date datetime,
release_company varchar(50),
status tinyint default 1,
regist_date datetime,
update_date datetime,
foreign key(category_id) references m_category(category_id)
)
default charset=utf8;


insert into product_info values
(1,1,"ベレヌスの威光","べれぬすのいこう","中心に向かって乱反射する6角のダイヤモンドリング。「輝けるもの」を意味する神の名を持つこの指輪は、そのものの強大な権威を象徴している",2,1250000,"./images","ring1.jpg",now(),"ADAMAS",0,now(),now()),
(2,2,"飛行石の指輪","ひこうせきのゆびわ","天空の城ラ○ュタへ導くとされる飛行石を使った指輪。「バ○ス！」と唱えるとラピ○タが現れるとか現れないとか。",2,800000,"./images","ring2.jpg",now(),"venus",0,now(),now()),
(3,3,"ロードオブザリング","ろーどおぶざりんぐ","遠い遠い昔、闇の冥王サウロンによって作られた世界を滅ぼす魔力を秘めた指輪。指輪をはめた者は世界を支配できる力を得るとか。",2,750000,"./images","ring3.jpg",now(),"venus",0,now(),now()),
(4,4,"SnowHalation","すのーはれーしょん","雪の結晶のようなネックレス。新進気鋭のジュエリーデザイナー山川の手によって作り上げられた一品。少し肌寒い季節になるとイルミネーションの光を浴びて七色に輝く。",3,10000,"./images","necklace1.jpg",now(),"山川工房",0,now(),now()),
(5,5,"女神の吐息","めがみのといき","オールシーズンで身につけることができるネックレス。某大手ジュエリーデザイナーが2年練りに練りとうとう完成した逸品。",3,10000,"./images","necklace2.jpg",now(),"ジュエリーショップ川上",0,now(),now()),
(6,6,"S字型ネックレス","えすじがたねっくれす","落ち着いた大人の女性のドレスコードに更なる華やかさを。",3,10000,"./images","necklace3.jpg",now(),"株式会社SAKURADAプロダクツ",0,now(),now()),
(7,7,"ポイントネックレス","ぽいんとねっくれす","洗練された輝き。上品なデザインでシーンを問わずご利用いただけます。",3,25000,"./images","necklace4.jpg",now(),"株式会社SAKURADAプロダクツ",0,now(),now()),
(8,8,"ShineDrop","しゃいんどろっぷ","シンプルのなかにも個性を光らせて。ゆれるドロップで女性らしさをあなたの魅力に",4,15000,"./images","pierce1.jpg",now(),"venus",0,now(),now()),
(9,9,"DreamLessDrop","どりーむれすどろっぷ","もう涙は流さない。現実を強く生きると決めたあなたへのチャーム。",4,1500,"./images","pierce2.jpg",now(),"山川工房",0,now(),now()),
(10,10,"SquaresVenus","すくえあすう゛ぃーなす","華やかなパーティーはもちろん普段使いにも映えるシンプルなデザイン。街角でも美しくありたいあなたへ。",4,10000,"./images","pierce3.jpg",now(),"ジュエリーショップ川上",0,now(),now()),
(11,11,"流星","ながれほし","最硬度高級チタンと中心に埋め込まれたロシア原産のダイヤモンドがあなたを世界の中心に変える。ポップな星型のデザインとブラックダイヤモンドが艶やかな印象を与える。めっちゃセクシー！かっけー！！",4,10000,"./images","pierce4.jpg",now(),"綾小路鉱物工房",0,now(),now()),
(12,12,"FloatingInTheEmerald","ふろーてぃんぐいんざえめらるど","あえてエメラルドの輝きを抑えることで高級感を演出。「純潔」のダイヤモンドと「幸福」のエメラルドが美しい日々をもたらす",4,10000,"./images","pierce5.jpg",now(),"NMIjewerly",0,now(),now()),
(13,13,"ポケットモンスターダイヤモンド","ぽけっともんすたーだいやもんど","2006年に発売されたポケットモンスターの作品。本作品で登場するポケモン,第4世代と呼ばれるシンオウ地方のポケモンたちとともに冒険を始めよう。",5,3980,"./images","toy2.jpg",now(),"株式会社ポケモン",0,now(),now());



create table cart_info(
id int primary key not null auto_increment,
user_id varchar(16) not null,
product_id int not null,
product_count int not null,
price int,
regist_date datetime,
update_date datetime,
foreign key(product_id) references product_info(product_id)
)
default charset=utf8;



create table purchase_history_info(
id int primary key not null auto_increment,
user_id varchar(16) not null,
product_id int not null,
product_count int,
price int,
destination_id int not null,
regist_date datetime,
update_date datetime,
foreign key(user_id) references user_info(user_id),
foreign key(product_id) references product_info(product_id),
foreign key(destination_id) references destination_info(id)
)
default charset=utf8;



create table destination_info(
id int primary key not null auto_increment,
user_id varchar(16) not null,
family_name varchar(32) not null,
first_name varchar(32) not null,
family_name_kana varchar(32) not null,
first_name_kana varchar(32) not null,
email varchar(32),
tel_number varchar(13),
user_address varchar(50) not null,
regist_date datetime,
update_date datetime,
foreign key(user_id) references user_info(user_id)
)
default charset=utf8;

insert into destination_info values
(1,"guest","インターノウス","ゲストユーザー","いんたーのうす","げすとゆーざー","internous.guest@gmail.com","09000000000","東京都千代田区霞が関3-6-15",now(),now());



create table m_category(
id int primary key not null comment "ID",
category_id int not null unique comment "カテゴリID",
category_name varchar(20) not null unique comment "カテゴリ名",
category_description varchar(100) comment "カテゴリ詳細",
insert_date datetime not null comment "登録日",
update_date datetime comment "更新日"
)
default charset=utf8
comment="カテゴリマスタテーブル"
;

insert into m_category values
(1,1,"全てのカテゴリー","necklace,Pierce,Ring,Toy,全てのカテゴリーが対象となります",now(), null),
(2,2,"Ring","指輪が対象となります",now(),now()),
(3,3,"Necklace","ネックレスが対象となります",now(),now()),
(4,4,"Pierce","ピアスが対象となります",now(),now()),
(5,5,"Toy","おもちゃが対象となります",now(),now());
