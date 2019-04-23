set names utf8;
set foreign_key_checks=0;

drop database if exists venus;
create database if not exists venus;

use venus;

create table user_info(
id int primary key not null auto_increment comment "ID",
user_id varchar(16) unique not null comment "ユーザーID",
password varchar(16) not null comment "パスワード",
family_name varchar(32) not null comment "姓",
first_name varchar(32) not null comment "名",
family_name_kana varchar(32) not null comment "姓かな",
first_name_kana varchar(32) not null comment "名かな",
sex tinyint default 0 comment "姓別",
email varchar(32) comment "メールアドレス",
status tinyint default 0 comment "ステータス",
logined tinyint not null default 0 comment "ログインフラグ",
regist_date datetime comment "登録日",
update_date datetime comment "更新日"
)
default charset=utf8
comment="会員情報テーブル"
;
insert into user_info values
(1,"guest","guest","ゲスト","ゲスト","げすと","げすと",0,"guest@gmail.com",0,0,now(),now()),
(2,"guest2","guest2","ゲスト2","ゲスト2","げすと2","げすと2",0,"guest2@gmail.com",0,0,now(),now()),
(3,"guest3","guest3","ゲスト3","ゲスト3","げすと3","げすと3",0,"guest3@gmail.com",0,0,now(),now()),
(4,"guest4","guest4","ゲスト4","ゲスト4","げすと4","げすと4",0,"guest4@gmail.com",0,0,now(),now()),
(5,"guest5","guest5","ゲスト5","ゲスト5","げすと5","げすと5",0,"guest5@gmail.com",0,0,now(),now()),
(6,"guest6","guest6","ゲスト6","ゲスト6","げすと6","げすと6",0,"guest6@gmail.com",0,0,now(),now()),
(7,"guest7","guest7","ゲスト7","ゲスト7","げすと7","げすと7",0,"guest7@gmail.com",0,0,now(),now()),
(8,"guest8","guest8","ゲスト8","ゲスト8","げすと8","げすと8",0,"guest8@gmail.com",0,0,now(),now()),
(9,"guest9","guest9","ゲスト9","ゲスト9","げすと9","げすと9",0,"guest9@gmail.com",0,0,now(),now()),
(10,"guest10","guest10","ゲスト10","ゲスト10","げすと10","げすと10",0,"guest10@gmail.com",0,0,now(),now()),
(11,"guest11","guest11","ゲスト11","ゲスト11","げすと11","げすと11",0,"guest11@gmail.com",0,0,now(),now()),
(12,"guest12","guest12","ゲスト12","ゲスト12","げすと12","げすと12",0,"guest12@gmail.com",0,0,now(),now());

create table product_info(
id int primary key not null auto_increment comment "ID",
product_id int unique not null comment "商品ID",
product_name varchar(100) unique not null comment "商品名",
product_name_kana varchar(100) not null comment "商品名かな",
product_description varchar(255) comment "商品詳細",
category_id int not null not null comment "カテゴリID",
price int comment "価格",
image_file_path varchar(100) comment "画像ファイルパス",
image_file_name varchar(50) comment "画像ファイル名",
release_date datetime comment "発売年月",
release_company varchar(50) comment "発売会社",
status tinyint default 1 comment "ステータス",
regist_date datetime comment "登録日",
update_date datetime comment "更新日",
foreign key(category_id) references m_category(category_id)
)
default charset=utf8
comment="商品情報テーブル";

insert into product_info values
(1,1,"ベレヌスの威光","べれぬすのいこう","中心に向かって乱反射する6角のダイヤモンドリング。「輝けるもの」を意味する神の名を持つこの指輪は、そのものの強大な権威を象徴している",2,1250000,"./images","ring1.jpg",now(),"ADAMAS",0,now(),now()),
(2,2,"飛行石の指輪","ひこうせきのゆびわ","天空の城ラ○ュタへ導くとされる飛行石を使った指輪。「バ○ス！」と唱えるとラピ○タが現れるとか現れないとか。",2,800000,"./images","ring2.jpg",now(),"venus",0,now(),now()),
(3,3,"ロードオブザリング","ろーどおぶざりんぐ","遠い遠い昔、闇の冥王サウロンによって作られた世界を滅ぼす魔力を秘めた指輪。指輪をはめた者は世界を支配できる力を得るとか。",2,750000,"./images","ring3.jpg",now(),"venus",0,now(),now()),
(4,4,"バレリーナ","ばれりーな","リングの中心は愛の交差点。女性バレエダンサーを想起させる麗しげな逸品",2,10000,"./images","ring4.jpg",now(),"venus",0,now(),now()),
(5,5,"ケセラセラ","けせらせら","スイスのシャモニーで創業したカルティエは「王の宝石商、宝石商の源」と呼ばれ、平成の終わりに最高傑作と自負する作品を発表",2,13000,"./images","ring5.jpg",now(),"venus",0,now(),now()),
(6,6,"SAKAMOTO","さかもと","幕末を熱狂的に駆け抜けた土佐の雄、坂本龍馬も絶賛。全国の坂本には欠かせないアイテム",2,30000,"./images","ring6.png",now(),"venus",0,now(),now()),
(7,7,"SnowHalation","すのーはれーしょん","雪の結晶のようなネックレス。新進気鋭のジュエリーデザイナー山川の手によって作り上げられた一品。少し肌寒い季節になるとイルミネーションの光を浴びて七色に輝く。",3,10000,"./images","necklace1.jpg",now(),"山川工房",0,now(),now()),
(8,8,"女神の吐息","めがみのといき","オールシーズンで身につけることができるネックレス。某大手ジュエリーデザイナーが2年練りに練りとうとう完成した逸品。",3,10000,"./images","necklace2.jpg",now(),"ジュエリーショップ川上",0,now(),now()),
(9,9,"S字型ネックレス","えすじがたねっくれす","落ち着いた大人の女性のドレスコードに更なる華やかさを。",3,10000,"./images","necklace3.jpg",now(),"株式会社SAKURADAプロダクツ",0,now(),now()),
(10,10,"ポイントネックレス","ぽいんとねっくれす","洗練された輝き。上品なデザインでシーンを問わずご利用いただけます。",3,25000,"./images","necklace4.jpg",now(),"株式会社SAKURADAプロダクツ",0,now(),now()),
(11,11,"coneko","こねこ","猫好きの猫好きによる猫好きのためのネックレス。猫好きなデザイナーが考案しその手で作りだした一品。",3,20000,"./images","necklace5.jpg",now(),"nekojewel",0,now(),now()),
(12,12,"ForYou","ふぉーゆー","5連のダイアモンドをシンプルにそして可憐にあしらった一品。愛するひとのために身に着けてみては。",3,10000,"./images","necklace6.jpg",now(),"Jewelry V",0,now(),now()),
(13,13,"ShineDrop","しゃいんどろっぷ","シンプルのなかにも個性を光らせて。ゆれるドロップで女性らしさをあなたの魅力に",4,15000,"./images","pierce1.jpg",now(),"venus",0,now(),now()),
(14,14,"DreamLessDrop","どりーむれすどろっぷ","もう涙は流さない。現実を強く生きると決めたあなたへのチャーム。",4,1500,"./images","pierce2.jpg",now(),"山川工房",0,now(),now()),
(15,15,"SquaresVenus","すくえあすう゛ぃーなす","華やかなパーティーはもちろん普段使いにも映えるシンプルなデザイン。街角でも美しくありたいあなたへ。",4,10000,"./images","pierce3.jpg",now(),"ジュエリーショップ川上",0,now(),now()),
(16,16,"流星","ながれほし","最硬度高級チタンと中心に埋め込まれたロシア原産のダイヤモンドがあなたを世界の中心に変える。ポップな星型のデザインとブラックダイヤモンドが艶やかな印象を与える。めっちゃセクシー！かっけー！！",4,10000,"./images","pierce4.jpg",now(),"綾小路鉱物工房",0,now(),now()),
(17,17,"FloatingInTheEmerald","ふろーてぃんぐいんざえめらるど","あえてエメラルドの輝きを抑えることで高級感を演出。「純潔」のダイヤモンドと「幸福」のエメラルドが美しい日々をもたらす",4,10000,"./images","pierce5.jpg",now(),"NMIjewerly",0,now(),now()),
(18,18,"アイオーンの牙","あいおーんのきば","円錐型の先に煌く3カラットのダイヤモンドピアス。哲学者プラトンはアイオーンを永遠と捉えており、その身に付けたものに対して輝かしい功績をもたらす",4,600000,"./images","pierce6.jpg",now(),"ダイヤの王将",0,now(),now()),
(19,19,"キラキラおもちゃの宝石詰め合わせセット","きらきらおもちゃのほうせきつめあわせせっと","子供に人気の商品。縁日などの宝石すくいを想定した業務用詰め合わせセット。",5,3000,"./images","toy1.jpg",now(),"ToyCenterNY",0,now(),now()),
(20,20,"ポケットモンスターダイヤモンド","ぽけっともんすたーだいやもんど","2006年に発売されたポケットモンスターの作品。本作品で登場するポケモン,第4世代と呼ばれるシンオウ地方のポケモンたちとともに冒険を始めよう。",5,3980,"./images","toy2.jpg",now(),"株式会社ポケモン",0,now(),now()),
(21,21,"キングダイヤモンド","きんぐだいやもんど","6歳から遊べる最大3人対戦のボードゲーム。シンプルなようで多様な戦術を駆使して見事勝利をつかめ",5,108,"./images","toy3.jpg",now(),"株式会社HANAYAMA",0,now(),now()),
(22,22,"ジョジョの奇妙な冒険クレイジーダイヤモンドフィギュア","じょじょのきみょうなぼうけん くれいじーだいやもんどふぃぎゅあ","ジョジョの奇妙な冒険第４部主人公東方仗助のスタンド能力のフィギュア。世間一般のイメージの掛け声「オラオラ」と「無駄無駄」ではなく「ドラララ」を愛用することでも有名。",5,5000,"./images","toy4.jpg",now(),"集英社",0,now(),now()),
(23,23,"DIAMANT","だいやもんど","3から8人向けボードゲーム、所要時間は30分ほどで気軽に遊ぶにもお手頃、アランRムーンが作り上げた至高のゲーム",5,2500,"./images","toy5.jpg",now(),"イーグル・グリフォンゲーム",0,now(),now()),
(24,24,"ダイヤモンドスライムキーホルダー","だいやもんどすらいむきーほるだー","ご存知世界で一番知られているモンスター系統のダイヤモンドスライムがキーホルダーになって登場。",5,500,"./images","toy6.jpg",now(),"SquareEnix",0,now(),now());

create table cart_info(
id int primary key not null auto_increment comment "ID",
user_id varchar(16) not null comment "ユーザーID",
product_id int not null comment "商品ID",
product_count int not null comment "個数",
price int comment "金額",
regist_date datetime comment "登録日",
update_date datetime comment "更新日",
foreign key(product_id) references product_info(product_id)
)
default charset=utf8
comment="カート情報テーブル"
;



create table purchase_history_info(
id int primary key not null auto_increment comment "ID",
user_id varchar(16) not null comment "ユーザーID",
product_id int not null comment "商品ID",
product_count int comment "個数",
price int comment "金額",
destination_id int not null comment "宛先情報ID",
regist_date datetime comment "登録日",
update_date datetime comment "更新日",
foreign key(user_id) references user_info(user_id),
foreign key(product_id) references product_info(product_id),
foreign key(destination_id) references destination_info(id)
)
default charset=utf8
comment="購入履歴情報テーブル"
;


create table destination_info(
id int primary key not null auto_increment comment "ID",
user_id varchar(16) not null comment "ユーザーID",
family_name varchar(32) not null comment "姓",
first_name varchar(32) not null comment "名",
family_name_kana varchar(32) not null comment "姓かな",
first_name_kana varchar(32) not null comment "名かな",
email varchar(32) comment "メールアドレス",
tel_number varchar(13) comment "電話番号",
user_address varchar(50) not null comment "住所",
regist_date datetime comment "登録日",
update_date datetime comment "更新日",
foreign key(user_id) references user_info(user_id)
)
default charset=utf8
comment="宛先情報テーブル"
;

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