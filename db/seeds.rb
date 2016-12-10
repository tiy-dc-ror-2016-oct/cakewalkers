# This file should contain all the record creation needed to seed the database with its default values.# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create our 3 roles
Role.create(
  name: "admin"
)
Role.create(
  name: "client"
)
Role.create(
  name: "cakewalker"
)

# Create 1 Admin
new_user = User.create(
  full_name: "Pamela Duke",
  email: "pduke@gmail.com",
  password: "password",
  password_confirmation: "password"
)

new_user.roles << Role.find_by(name: "admin")

# Create all prducts
products = [
{
"id": 1,
"name": "Adobe bread",
"code": "37c7f75e-8dda-4abd-8a52-05c9aacfe5e6",
"time_to_bake_in_seconds": 2091,
"created_at": "2016-12-09T20:45:55.985Z",
"updated_at": "2016-12-09T20:45:55.985Z"
},
{
"id": 2,
"name": "Amish friendship bread",
"code": "b2f9cae5-4f10-4bf9-b790-331726c653dc",
"time_to_bake_in_seconds": 1813,
"created_at": "2016-12-09T20:45:56.011Z",
"updated_at": "2016-12-09T20:45:56.011Z"
},
{
"id": 3,
"name": "Anadama bread",
"code": "ed714c3f-eacc-4ae8-b968-8e73905320b5",
"time_to_bake_in_seconds": 1902,
"created_at": "2016-12-09T20:45:56.017Z",
"updated_at": "2016-12-09T20:45:56.017Z"
},
{
"id": 4,
"name": "Banana bread",
"code": "850175df-4603-4d08-83a0-c6099a87fb40",
"time_to_bake_in_seconds": 1734,
"created_at": "2016-12-09T20:45:56.021Z",
"updated_at": "2016-12-09T20:45:56.021Z"
},
{
"id": 5,
"name": "Beaten biscuit",
"code": "fee7c7de-560c-428a-920e-a7c6f78bf631",
"time_to_bake_in_seconds": 1665,
"created_at": "2016-12-09T20:45:56.025Z",
"updated_at": "2016-12-09T20:45:56.025Z"
},
{
"id": 6,
"name": "Biscuit",
"code": "17c9035f-ac6d-4687-9fe1-3b978b512c8a",
"time_to_bake_in_seconds": 1510,
"created_at": "2016-12-09T20:45:56.029Z",
"updated_at": "2016-12-09T20:45:56.029Z"
},
{
"id": 7,
"name": "Brown bread",
"code": "68e3b30e-f7a4-4d0e-97d2-10d5e690b8c5",
"time_to_bake_in_seconds": 1202,
"created_at": "2016-12-09T20:45:56.032Z",
"updated_at": "2016-12-09T20:45:56.032Z"
},
{
"id": 8,
"name": "Bulkie roll",
"code": "0c5a7a93-a591-4db7-b967-04277aa36755",
"time_to_bake_in_seconds": 1976,
"created_at": "2016-12-09T20:45:56.035Z",
"updated_at": "2016-12-09T20:45:56.035Z"
},
{
"id": 9,
"name": "Cornbread",
"code": "aabb5312-ccb4-4281-bb3b-034af6629d9a",
"time_to_bake_in_seconds": 1839,
"created_at": "2016-12-09T20:45:56.038Z",
"updated_at": "2016-12-09T20:45:56.038Z"
},
{
"id": 10,
"name": "Cuban bread",
"code": "9d8b9c07-2512-4f9d-92f4-0a964e7c4ca4",
"time_to_bake_in_seconds": 1673,
"created_at": "2016-12-09T20:45:56.041Z",
"updated_at": "2016-12-09T20:45:56.041Z"
},
{
"id": 11,
"name": "Frybread",
"code": "664dec60-fbcd-4966-b2f7-b029ddd82701",
"time_to_bake_in_seconds": 2073,
"created_at": "2016-12-09T20:45:56.044Z",
"updated_at": "2016-12-09T20:45:56.044Z"
},
{
"id": 12,
"name": "Graham bread",
"code": "34588472-84dc-434b-88f3-e5aa10b1e4d3",
"time_to_bake_in_seconds": 2048,
"created_at": "2016-12-09T20:45:56.047Z",
"updated_at": "2016-12-09T20:45:56.047Z"
},
{
"id": 13,
"name": "Hot water corn bread",
"code": "07b4d3f8-9195-4de4-b45f-83179366adf7",
"time_to_bake_in_seconds": 1883,
"created_at": "2016-12-09T20:45:56.051Z",
"updated_at": "2016-12-09T20:45:56.051Z"
},
{
"id": 14,
"name": "Hushpuppy",
"code": "be4193b7-c0bd-4779-b132-fb5a421abd4d",
"time_to_bake_in_seconds": 1942,
"created_at": "2016-12-09T20:45:56.055Z",
"updated_at": "2016-12-09T20:45:56.055Z"
},
{
"id": 15,
"name": "Muffin",
"code": "9a8e6e3e-cd04-41ff-a182-6e5744e2537d",
"time_to_bake_in_seconds": 956,
"created_at": "2016-12-09T20:45:56.058Z",
"updated_at": "2016-12-09T20:45:56.058Z",
"unit_price_in_cents": 300,
"for_sale": true,
"image_url": "Muffin.jpg"
},
{
"id": 16,
"name": "Muffuletta",
"code": "90a55d93-38ac-4bd6-a5a3-56f2d5923516",
"time_to_bake_in_seconds": 1518,
"created_at": "2016-12-09T20:45:56.061Z",
"updated_at": "2016-12-09T20:45:56.061Z"
},
{
"id": 17,
"name": "Parker House roll",
"code": "f4a0a7bc-6092-4af9-9ea4-91d068615e76",
"time_to_bake_in_seconds": 1746,
"created_at": "2016-12-09T20:45:56.065Z",
"updated_at": "2016-12-09T20:45:56.065Z"
},
{
"id": 18,
"name": "Pepperoni roll",
"code": "ada2621b-ba13-47ce-9ad0-7b62f934ebac",
"time_to_bake_in_seconds": 2084,
"created_at": "2016-12-09T20:45:56.068Z",
"updated_at": "2016-12-09T20:45:56.068Z"
},
{
"id": 19,
"name": "Popover",
"code": "40af5ee2-3282-4c32-a791-67fe6d1e6b03",
"time_to_bake_in_seconds": 1600,
"created_at": "2016-12-09T20:45:56.072Z",
"updated_at": "2016-12-09T20:45:56.072Z"
},
{
"id": 20,
"name": "Pullman loaf",
"code": "f53e5217-46b4-4791-98b5-578abb0d0052",
"time_to_bake_in_seconds": 1934,
"created_at": "2016-12-09T20:45:56.075Z",
"updated_at": "2016-12-09T20:45:56.075Z",
"unit_price_in_cents": 800,
"for_sale": true,
"image_url": "PullmanLoaf.jpg"
},
{
"id": 21,
"name": "Salt-rising bread",
"code": "a69de6d4-d087-4add-8a67-560add284531",
"time_to_bake_in_seconds": 1612,
"created_at": "2016-12-09T20:45:56.078Z",
"updated_at": "2016-12-09T20:45:56.078Z"
},
{
"id": 22,
"name": "Scali bread",
"code": "780a056e-79f6-4110-b5b4-4936ef6c2dff",
"time_to_bake_in_seconds": 1685,
"created_at": "2016-12-09T20:45:56.081Z",
"updated_at": "2016-12-09T20:45:56.081Z"
},
{
"id": 23,
"name": "Sloosh",
"code": "606b5941-8660-431c-82dc-185ade4f8285",
"time_to_bake_in_seconds": 1714,
"created_at": "2016-12-09T20:45:56.084Z",
"updated_at": "2016-12-09T20:45:56.084Z"
},
{
"id": 24,
"name": "Texas toast",
"code": "648f40b5-ffaa-42a3-a339-b3d0c4a55d73",
"time_to_bake_in_seconds": 1256,
"created_at": "2016-12-09T20:45:56.087Z",
"updated_at": "2016-12-09T20:45:56.087Z"
},
{
"id": 25,
"name": "Angel food cake",
"code": "98e63a63-060a-4bcb-b2ad-2d0f234e37ce",
"time_to_bake_in_seconds": 3223,
"created_at": "2016-12-09T20:45:56.090Z",
"updated_at": "2016-12-09T20:45:56.090Z"
},
{
"id": 26,
"name": "Apple cake",
"code": "915e8898-0786-4239-b2b3-03f2d3dcb800",
"time_to_bake_in_seconds": 2806,
"created_at": "2016-12-09T20:45:56.094Z",
"updated_at": "2016-12-09T20:45:56.094Z"
},
{
"id": 27,
"name": "Applesauce cake",
"code": "52d4fca9-95f0-4067-9d3f-8c07e3f23065",
"time_to_bake_in_seconds": 3210,
"created_at": "2016-12-09T20:45:56.097Z",
"updated_at": "2016-12-09T20:45:56.097Z"
},
{
"id": 28,
"name": "Aranygaluska",
"code": "131516c5-cf20-4dbe-bde0-3c82867b5b8d",
"time_to_bake_in_seconds": 2736,
"created_at": "2016-12-09T20:45:56.100Z",
"updated_at": "2016-12-09T20:45:56.100Z"
},
{
"id": 29,
"name": "Avocado cake",
"code": "0504b36a-edae-44e8-844d-96540a8e58fc",
"time_to_bake_in_seconds": 3002,
"created_at": "2016-12-09T20:45:56.103Z",
"updated_at": "2016-12-09T20:45:56.103Z",
"unit_price_in_cents": 3800,
"for_sale": true,
"image_url": "AvacodoCake.jpg"
},
{
"id": 30,
"name": "Babka",
"code": "0e5f5102-91dc-4e13-b53d-d696d1b5b916",
"time_to_bake_in_seconds": 2887,
"created_at": "2016-12-09T20:45:56.106Z",
"updated_at": "2016-12-09T20:45:56.106Z"
},
{
"id": 31,
"name": "Ballokume",
"code": "b43c1a03-6a03-49f7-9740-2342ae1e19f1",
"time_to_bake_in_seconds": 3130,
"created_at": "2016-12-09T20:45:56.110Z",
"updated_at": "2016-12-09T20:45:56.110Z"
},
{
"id": 32,
"name": "Banana cake",
"code": "65a36d07-b21a-4954-9d1d-8e6bdcfa94a0",
"time_to_bake_in_seconds": 2761,
"created_at": "2016-12-09T20:45:56.114Z",
"updated_at": "2016-12-09T20:45:56.114Z"
},
{
"id": 33,
"name": "Basbousa",
"code": "f0b95f1a-91fc-41d7-af0f-75806768cf76",
"time_to_bake_in_seconds": 3284,
"created_at": "2016-12-09T20:45:56.118Z",
"updated_at": "2016-12-09T20:45:56.118Z"
},
{
"id": 34,
"name": "Beer cake",
"code": "fa7449e7-a685-4f9e-ac40-1c114a6a96f2",
"time_to_bake_in_seconds": 2878,
"created_at": "2016-12-09T20:45:56.122Z",
"updated_at": "2016-12-09T20:45:56.122Z"
},
{
"id": 35,
"name": "Better than sex cake",
"code": "40911383-bf37-47d2-b153-eb53d2fa7641",
"time_to_bake_in_seconds": 3175,
"created_at": "2016-12-09T20:45:56.125Z",
"updated_at": "2016-12-09T20:45:56.125Z"
},
{
"id": 36,
"name": "Boston cream pie",
"code": "d0f770fc-8e15-40a8-b71b-c257ca1c4b5e",
"time_to_bake_in_seconds": 2710,
"created_at": "2016-12-09T20:45:56.128Z",
"updated_at": "2016-12-09T20:45:56.128Z"
},
{
"id": 37,
"name": "Banana cake/bread",
"code": "b6579bb9-2240-482c-b889-1a2ed538b6e5",
"time_to_bake_in_seconds": 3013,
"created_at": "2016-12-09T20:45:56.132Z",
"updated_at": "2016-12-09T20:45:56.132Z"
},
{
"id": 38,
"name": "Banoffee pie",
"code": "e4049135-2863-48cd-a624-0540d5142488",
"time_to_bake_in_seconds": 2700,
"created_at": "2016-12-09T20:45:56.135Z",
"updated_at": "2016-12-09T20:45:56.135Z"
},
{
"id": 39,
"name": "Bara brith",
"code": "06acd6e1-d75f-4837-80db-0261f5b93593",
"time_to_bake_in_seconds": 3162,
"created_at": "2016-12-09T20:45:56.139Z",
"updated_at": "2016-12-09T20:45:56.139Z"
},
{
"id": 40,
"name": "Battenberg cake",
"code": "408abbb5-a374-471c-ad20-f46440bab3ed",
"time_to_bake_in_seconds": 3222,
"created_at": "2016-12-09T20:45:56.142Z",
"updated_at": "2016-12-09T20:45:56.142Z"
},
{
"id": 41,
"name": "Baumkuchen",
"code": "eabf875c-49b7-4534-9fb1-b70a096bb43e",
"time_to_bake_in_seconds": 2741,
"created_at": "2016-12-09T20:45:56.146Z",
"updated_at": "2016-12-09T20:45:56.146Z"
},
{
"id": 42,
"name": "Bibingka",
"code": "dd7096bc-4299-4ef2-8163-ddc30bfcd28a",
"time_to_bake_in_seconds": 2844,
"created_at": "2016-12-09T20:45:56.149Z",
"updated_at": "2016-12-09T20:45:56.149Z"
},
{
"id": 43,
"name": "Bienenstich Bee Sting",
"code": "365ade63-db20-4fdc-9094-7457a80d6d9d",
"time_to_bake_in_seconds": 2843,
"created_at": "2016-12-09T20:45:56.152Z",
"updated_at": "2016-12-09T20:45:56.152Z"
},
{
"id": 44,
"name": "Birthday cake",
"code": "8bc84c0a-8b1e-413b-8273-93a440733ddb",
"time_to_bake_in_seconds": 3072,
"created_at": "2016-12-09T20:45:56.156Z",
"updated_at": "2016-12-09T20:45:56.156Z"
},
{
"id": 45,
"name": "Bizcocho Dominicano",
"code": "0fe163e4-b691-4d77-8f48-34c8caa8100b",
"time_to_bake_in_seconds": 2970,
"created_at": "2016-12-09T20:45:56.159Z",
"updated_at": "2016-12-09T20:45:56.159Z"
},
{
"id": 46,
"name": "Black Forest cake",
"code": "524f47b4-f59d-4d15-bf5c-696535dc0ed8",
"time_to_bake_in_seconds": 3100,
"created_at": "2016-12-09T20:45:56.162Z",
"updated_at": "2016-12-09T20:45:56.162Z"
},
{
"id": 47,
"name": "Blitztorte",
"code": "1572612f-bf14-4bea-bd7c-a1dbdcf6130f",
"time_to_bake_in_seconds": 2956,
"created_at": "2016-12-09T20:45:56.165Z",
"updated_at": "2016-12-09T20:45:56.165Z"
},
{
"id": 48,
"name": "Blondie",
"code": "cc0686d4-9ad1-4820-97f4-9aa141ed32b2",
"time_to_bake_in_seconds": 3295,
"created_at": "2016-12-09T20:45:56.168Z",
"updated_at": "2016-12-09T20:45:56.168Z"
},
{
"id": 49,
"name": "Bolo de mel",
"code": "26967cf4-7ee3-4db9-b8ec-f066b7c6122d",
"time_to_bake_in_seconds": 2892,
"created_at": "2016-12-09T20:45:56.171Z",
"updated_at": "2016-12-09T20:45:56.171Z"
},
{
"id": 50,
"name": "Brazil nut cake",
"code": "b1c26035-e0e0-4277-9f5e-5d8102277df4",
"time_to_bake_in_seconds": 3280,
"created_at": "2016-12-09T20:45:56.174Z",
"updated_at": "2016-12-09T20:45:56.174Z"
},
{
"id": 51,
"name": "Brownie",
"code": "2c1facce-6bc8-4f32-bacb-5797275427cb",
"time_to_bake_in_seconds": 3164,
"created_at": "2016-12-09T20:45:56.180Z",
"updated_at": "2016-12-09T20:45:56.180Z"
},
{
"id": 52,
"name": "Buccellato",
"code": "b2353bf0-e83e-43fe-9fd0-a21e76faa750",
"time_to_bake_in_seconds": 2935,
"created_at": "2016-12-09T20:45:56.183Z",
"updated_at": "2016-12-09T20:45:56.183Z"
},
{
"id": 53,
"name": "Budapestlängd",
"code": "4147cad8-8cbf-4011-9d29-0b7935a838b0",
"time_to_bake_in_seconds": 2938,
"created_at": "2016-12-09T20:45:56.187Z",
"updated_at": "2016-12-09T20:45:56.187Z"
},
{
"id": 54,
"name": "Bundt cake",
"code": "63ab7e8e-19cf-432e-9bb1-3fdfa4f9b29f",
"time_to_bake_in_seconds": 2964,
"created_at": "2016-12-09T20:45:56.190Z",
"updated_at": "2016-12-09T20:45:56.190Z"
},
{
"id": 55,
"name": "Butter cake",
"code": "34e7ae34-e036-4c50-8bc0-644b60672ff3",
"time_to_bake_in_seconds": 3105,
"created_at": "2016-12-09T20:45:56.193Z",
"updated_at": "2016-12-09T20:45:56.193Z"
},
{
"id": 56,
"name": "Butterfly cake",
"code": "e624b67d-7094-4907-b6a8-2f09474039bb",
"time_to_bake_in_seconds": 2779,
"created_at": "2016-12-09T20:45:56.197Z",
"updated_at": "2016-12-09T20:45:56.197Z"
},
{
"id": 57,
"name": "Cassata",
"code": "d86927b1-af50-42d1-9030-2ae73de892c0",
"time_to_bake_in_seconds": 2886,
"created_at": "2016-12-09T20:45:56.200Z",
"updated_at": "2016-12-09T20:45:56.200Z"
},
{
"id": 58,
"name": "Carrot cake",
"code": "1a7703c0-486c-4346-adb8-6e8a68c31111",
"time_to_bake_in_seconds": 2749,
"created_at": "2016-12-09T20:45:56.204Z",
"updated_at": "2016-12-09T20:45:56.204Z"
},
{
"id": 59,
"name": "Cheesecake",
"code": "46f5e989-2ae6-4588-9908-d685a61e5873",
"time_to_bake_in_seconds": 3253,
"created_at": "2016-12-09T20:45:56.207Z",
"updated_at": "2016-12-09T20:45:56.207Z"
},
{
"id": 60,
"name": "Chestnut cake",
"code": "5696b034-d60c-42fc-bda1-9cbc79e2798c",
"time_to_bake_in_seconds": 3246,
"created_at": "2016-12-09T20:45:56.211Z",
"updated_at": "2016-12-09T20:45:56.211Z"
},
{
"id": 61,
"name": "Chiffon cake",
"code": "8839a9c0-a825-43ce-a884-ec671bd41da6",
"time_to_bake_in_seconds": 3072,
"created_at": "2016-12-09T20:45:56.215Z",
"updated_at": "2016-12-09T20:45:56.215Z"
},
{
"id": 62,
"name": "Chocolate cake",
"code": "0c5271f9-050c-49fc-b923-94842f6afc4e",
"time_to_bake_in_seconds": 2745,
"created_at": "2016-12-09T20:45:56.219Z",
"updated_at": "2016-12-09T20:45:56.219Z"
},
{
"id": 63,
"name": "Christmas cake",
"code": "26a78f76-a9bd-4b15-879f-94f65968f90b",
"time_to_bake_in_seconds": 3165,
"created_at": "2016-12-09T20:45:56.222Z",
"updated_at": "2016-12-09T20:45:56.222Z"
},
{
"id": 64,
"name": "Clementine cake",
"code": "9124308d-0bce-4428-8313-bf482eaf5ee7",
"time_to_bake_in_seconds": 3046,
"created_at": "2016-12-09T20:45:56.225Z",
"updated_at": "2016-12-09T20:45:56.225Z"
},
{
"id": 65,
"name": "Coconut cake",
"code": "b1e0ca63-f0da-4f0a-b622-534392779341",
"time_to_bake_in_seconds": 3075,
"created_at": "2016-12-09T20:45:56.229Z",
"updated_at": "2016-12-09T20:45:56.229Z"
},
{
"id": 66,
"name": "Coffee cake",
"code": "2088bdbd-af9b-4344-bb1a-16a69944481f",
"time_to_bake_in_seconds": 3097,
"created_at": "2016-12-09T20:45:56.233Z",
"updated_at": "2016-12-09T20:45:56.233Z"
},
{
"id": 67,
"name": "Cremeschnitte",
"code": "b7da0cbf-9098-4ce9-987a-5bc11f3e8b90",
"time_to_bake_in_seconds": 2894,
"created_at": "2016-12-09T20:45:56.236Z",
"updated_at": "2016-12-09T20:45:56.236Z"
},
{
"id": 68,
"name": "Croquembouche",
"code": "88fae518-5d1b-48a0-a390-ca9e548eb349",
"time_to_bake_in_seconds": 3105,
"created_at": "2016-12-09T20:45:56.240Z",
"updated_at": "2016-12-09T20:45:56.240Z"
},
{
"id": 69,
"name": "Crystal cake",
"code": "872e3859-bc2b-4e0e-a0a5-0c0bab599154",
"time_to_bake_in_seconds": 3026,
"created_at": "2016-12-09T20:45:56.243Z",
"updated_at": "2016-12-09T20:45:56.243Z"
},
{
"id": 70,
"name": "Cuatro leches cake",
"code": "d81f6f5b-7d00-4ec9-9b4f-23dcd8bd7f22",
"time_to_bake_in_seconds": 3135,
"created_at": "2016-12-09T20:45:56.247Z",
"updated_at": "2016-12-09T20:45:56.247Z"
},
{
"id": 71,
"name": "Cucumber cake",
"code": "c2e514a6-bbe5-430f-9b66-c77ad4241df2",
"time_to_bake_in_seconds": 2988,
"created_at": "2016-12-09T20:45:56.251Z",
"updated_at": "2016-12-09T20:45:56.251Z"
},
{
"id": 72,
"name": "Cupcake",
"code": "5b7f9917-8bc1-441f-98b6-64d5ca2e1f0c",
"time_to_bake_in_seconds": 3265,
"created_at": "2016-12-09T20:45:56.254Z",
"updated_at": "2016-12-09T20:45:56.254Z"
},
{
"id": 73,
"name": "Dacquoise",
"code": "ae87d3cc-a753-40b4-8e5f-7a3650e67391",
"time_to_bake_in_seconds": 3118,
"created_at": "2016-12-09T20:45:56.258Z",
"updated_at": "2016-12-09T20:45:56.258Z"
},
{
"id": 74,
"name": "Date and walnut loaf",
"code": "d21162e4-d990-4e31-8fd3-0c59f73af01e",
"time_to_bake_in_seconds": 2871,
"created_at": "2016-12-09T20:45:56.261Z",
"updated_at": "2016-12-09T20:45:56.261Z"
},
{
"id": 75,
"name": "Date square",
"code": "d5430efa-2adc-4ea2-a692-87b3c11b1caa",
"time_to_bake_in_seconds": 3287,
"created_at": "2016-12-09T20:45:56.265Z",
"updated_at": "2016-12-09T20:45:56.265Z"
},
{
"id": 76,
"name": "Depression cake",
"code": "f2c34c1c-92ae-43e3-a3b1-666e81d1a974",
"time_to_bake_in_seconds": 3087,
"created_at": "2016-12-09T20:45:56.268Z",
"updated_at": "2016-12-09T20:45:56.268Z"
},
{
"id": 77,
"name": "Devil's food cake",
"code": "b588ce96-322f-4a38-a8de-710b83ede400",
"time_to_bake_in_seconds": 3296,
"created_at": "2016-12-09T20:45:56.272Z",
"updated_at": "2016-12-09T20:45:56.272Z"
},
{
"id": 78,
"name": "Dobos cake",
"code": "7617e471-0cde-472b-9a94-fbfd8369a9bd",
"time_to_bake_in_seconds": 3042,
"created_at": "2016-12-09T20:45:56.275Z",
"updated_at": "2016-12-09T20:45:56.275Z"
},
{
"id": 79,
"name": "Dundee cake",
"code": "20c5b3b4-6a1e-4eeb-9635-7e5196e4b5e2",
"time_to_bake_in_seconds": 2941,
"created_at": "2016-12-09T20:45:56.280Z",
"updated_at": "2016-12-09T20:45:56.280Z"
},
{
"id": 80,
"name": "Eccles cake",
"code": "b0b7f92b-bc01-47df-802f-efaa4fba0131",
"time_to_bake_in_seconds": 2720,
"created_at": "2016-12-09T20:45:56.283Z",
"updated_at": "2016-12-09T20:45:56.283Z"
},
{
"id": 81,
"name": "Esterházy torte",
"code": "df1ce9c2-fa2d-4271-b55e-ca22e567aa90",
"time_to_bake_in_seconds": 2709,
"created_at": "2016-12-09T20:45:56.287Z",
"updated_at": "2016-12-09T20:45:56.287Z"
},
{
"id": 82,
"name": "Fat rascal",
"code": "e6a242a3-c8ee-4b97-af88-42e0ab4095bc",
"time_to_bake_in_seconds": 3109,
"created_at": "2016-12-09T20:45:56.291Z",
"updated_at": "2016-12-09T20:45:56.291Z"
},
{
"id": 83,
"name": "Faworki",
"code": "01aba648-0c84-4fd8-bc94-62f2f82287e9",
"time_to_bake_in_seconds": 2722,
"created_at": "2016-12-09T20:45:56.295Z",
"updated_at": "2016-12-09T20:45:56.295Z"
},
{
"id": 84,
"name": "Fig cake",
"code": "afb4054a-5008-4eed-a4bb-eb2516a7d074",
"time_to_bake_in_seconds": 2769,
"created_at": "2016-12-09T20:45:56.299Z",
"updated_at": "2016-12-09T20:45:56.299Z"
},
{
"id": 85,
"name": "Financier",
"code": "593ee75a-1a24-4cf9-bf07-5456ed0e0ec2",
"time_to_bake_in_seconds": 2731,
"created_at": "2016-12-09T20:45:56.303Z",
"updated_at": "2016-12-09T20:45:56.303Z"
},
{
"id": 86,
"name": "Flourless chocolate cake",
"code": "8d0f284a-e88d-43ed-986c-28fcb2872504",
"time_to_bake_in_seconds": 2894,
"created_at": "2016-12-09T20:45:56.306Z",
"updated_at": "2016-12-09T20:45:56.306Z"
},
{
"id": 87,
"name": "Fondant Fancy",
"code": "318e59f4-b092-4a48-a105-e55405088287",
"time_to_bake_in_seconds": 2817,
"created_at": "2016-12-09T20:45:56.309Z",
"updated_at": "2016-12-09T20:45:56.309Z"
},
{
"id": 88,
"name": "Fragelité",
"code": "45359e38-3793-4634-b5fa-5ba45544be54",
"time_to_bake_in_seconds": 2899,
"created_at": "2016-12-09T20:45:56.313Z",
"updated_at": "2016-12-09T20:45:56.313Z"
},
{
"id": 89,
"name": "Frog cake",
"code": "6e69d6f6-0505-4e5b-8d91-4b05e974e8c6",
"time_to_bake_in_seconds": 3299,
"created_at": "2016-12-09T20:45:56.317Z",
"updated_at": "2016-12-09T20:45:56.317Z"
},
{
"id": 90,
"name": "Fruitcake",
"code": "2c388d9d-eac6-4f91-94dd-45851680f11d",
"time_to_bake_in_seconds": 2768,
"created_at": "2016-12-09T20:45:56.320Z",
"updated_at": "2016-12-09T20:45:56.320Z"
},
{
"id": 91,
"name": "Fountain cake",
"code": "3f8b3cd0-9ca5-4419-877a-e82f565794ce",
"time_to_bake_in_seconds": 2824,
"created_at": "2016-12-09T20:45:56.324Z",
"updated_at": "2016-12-09T20:45:56.324Z"
},
{
"id": 92,
"name": "Funing big cake",
"code": "00cd8f02-79f4-4863-b9b4-5c8637fa2ff3",
"time_to_bake_in_seconds": 2936,
"created_at": "2016-12-09T20:45:56.327Z",
"updated_at": "2016-12-09T20:45:56.327Z"
},
{
"id": 93,
"name": "Genoa cake",
"code": "51a307ae-9de0-444f-abec-352ac81dac11",
"time_to_bake_in_seconds": 3050,
"created_at": "2016-12-09T20:45:56.330Z",
"updated_at": "2016-12-09T20:45:56.330Z"
},
{
"id": 94,
"name": "Genoise Genoese cake",
"code": "4c79e5f1-c130-4ebe-b47f-ef44645a1839",
"time_to_bake_in_seconds": 2751,
"created_at": "2016-12-09T20:45:56.334Z",
"updated_at": "2016-12-09T20:45:56.334Z"
},
{
"id": 95,
"name": "German Chocolate Cake",
"code": "57852355-4912-4ad5-8c7b-de89c324b1f6",
"time_to_bake_in_seconds": 3259,
"created_at": "2016-12-09T20:45:56.337Z",
"updated_at": "2016-12-09T20:45:56.337Z"
},
{
"id": 96,
"name": "Gingerbread",
"code": "4dd2fce3-8e39-4271-bcd2-5df060d12c55",
"time_to_bake_in_seconds": 3230,
"created_at": "2016-12-09T20:45:56.341Z",
"updated_at": "2016-12-09T20:45:56.341Z"
},
{
"id": 97,
"name": "Goose Breast",
"code": "f6e904dc-ca01-45e9-a979-867c18910637",
"time_to_bake_in_seconds": 2762,
"created_at": "2016-12-09T20:45:56.344Z",
"updated_at": "2016-12-09T20:45:56.344Z"
},
{
"id": 98,
"name": "Halloween cake",
"code": "6c8c7cc5-9670-4846-850f-becd7878e089",
"time_to_bake_in_seconds": 2733,
"created_at": "2016-12-09T20:45:56.348Z",
"updated_at": "2016-12-09T20:45:56.348Z"
},
{
"id": 99,
"name": "Hash brownies",
"code": "321d7ceb-6108-4918-a2fc-4d2a91f4e32a",
"time_to_bake_in_seconds": 2930,
"created_at": "2016-12-09T20:45:56.351Z",
"updated_at": "2016-12-09T20:45:56.351Z"
},
{
"id": 100,
"name": "Hot milk cake",
"code": "3f5069b3-016b-4dce-8c86-1eb8d560c66a",
"time_to_bake_in_seconds": 3011,
"created_at": "2016-12-09T20:45:56.355Z",
"updated_at": "2016-12-09T20:45:56.355Z"
},
{
"id": 101,
"name": "Ice cream cake",
"code": "4e67f081-ac84-4db3-8ae0-483c9584e377",
"time_to_bake_in_seconds": 3220,
"created_at": "2016-12-09T20:45:56.358Z",
"updated_at": "2016-12-09T20:45:56.358Z"
},
{
"id": 102,
"name": "Jaffa Cakes",
"code": "da344c2d-a714-45f1-829e-df9aba1cc6b2",
"time_to_bake_in_seconds": 2944,
"created_at": "2016-12-09T20:45:56.362Z",
"updated_at": "2016-12-09T20:45:56.362Z"
},
{
"id": 103,
"name": "Kabuni",
"code": "d002fc0f-d9fa-4045-9076-2f3a00aa1584",
"time_to_bake_in_seconds": 3121,
"created_at": "2016-12-09T20:45:56.365Z",
"updated_at": "2016-12-09T20:45:56.365Z"
},
{
"id": 104,
"name": "Karpatka",
"code": "36978d59-7766-40f2-b0f5-ba07d81ffade",
"time_to_bake_in_seconds": 2709,
"created_at": "2016-12-09T20:45:56.368Z",
"updated_at": "2016-12-09T20:45:56.368Z"
},
{
"id": 105,
"name": "Kiev cake",
"code": "307c4d02-0476-4f0f-ba34-380c8704c42d",
"time_to_bake_in_seconds": 2772,
"created_at": "2016-12-09T20:45:56.372Z",
"updated_at": "2016-12-09T20:45:56.372Z"
},
{
"id": 106,
"name": "King cake",
"code": "979c0bbd-cdc1-4ebf-9bc4-e14fe2b906fa",
"time_to_bake_in_seconds": 2708,
"created_at": "2016-12-09T20:45:56.375Z",
"updated_at": "2016-12-09T20:45:56.375Z"
},
{
"id": 107,
"name": "Kladdkaka",
"code": "1d76c029-871b-4373-aabb-34b658f95625",
"time_to_bake_in_seconds": 3235,
"created_at": "2016-12-09T20:45:56.378Z",
"updated_at": "2016-12-09T20:45:56.378Z"
},
{
"id": 108,
"name": "Kliņģeris",
"code": "6d477e11-d740-4324-9a52-14a10798ebe7",
"time_to_bake_in_seconds": 2946,
"created_at": "2016-12-09T20:45:56.381Z",
"updated_at": "2016-12-09T20:45:56.381Z"
},
{
"id": 109,
"name": "Kołacz",
"code": "b2a9cd3d-f423-46ee-87ac-ca2c043c701f",
"time_to_bake_in_seconds": 3271,
"created_at": "2016-12-09T20:45:56.385Z",
"updated_at": "2016-12-09T20:45:56.385Z"
},
{
"id": 110,
"name": "Kolaczki",
"code": "9c5a53c5-2347-4386-8a17-8fde2fee20c3",
"time_to_bake_in_seconds": 2854,
"created_at": "2016-12-09T20:45:56.388Z",
"updated_at": "2016-12-09T20:45:56.388Z"
},
{
"id": 111,
"name": "Kouign-amann",
"code": "cef85b5d-1bbb-48b3-be08-633cfea932be",
"time_to_bake_in_seconds": 3014,
"created_at": "2016-12-09T20:45:56.391Z",
"updated_at": "2016-12-09T20:45:56.391Z"
},
{
"id": 112,
"name": "Kutia",
"code": "39446721-7315-4ab8-be7a-ebd2fbafb801",
"time_to_bake_in_seconds": 3175,
"created_at": "2016-12-09T20:45:56.395Z",
"updated_at": "2016-12-09T20:45:56.395Z"
},
{
"id": 113,
"name": "Kransekake",
"code": "0adedb77-335c-4092-b50e-bfbe13dd76f1",
"time_to_bake_in_seconds": 3207,
"created_at": "2016-12-09T20:45:56.398Z",
"updated_at": "2016-12-09T20:45:56.398Z"
},
{
"id": 114,
"name": "Kremówka",
"code": "8390c6c4-2ccc-4b66-884d-a13b419a67ba",
"time_to_bake_in_seconds": 2832,
"created_at": "2016-12-09T20:45:56.401Z",
"updated_at": "2016-12-09T20:45:56.401Z"
},
{
"id": 115,
"name": "Krówka",
"code": "7c152a92-d123-4b41-a3be-4cbc631d25a4",
"time_to_bake_in_seconds": 2731,
"created_at": "2016-12-09T20:45:56.405Z",
"updated_at": "2016-12-09T20:45:56.405Z"
},
{
"id": 116,
"name": "Lady Baltimore cake",
"code": "fab3bbbb-4c55-42d8-9ff2-9b95449e8845",
"time_to_bake_in_seconds": 2871,
"created_at": "2016-12-09T20:45:56.408Z",
"updated_at": "2016-12-09T20:45:56.408Z"
},
{
"id": 117,
"name": "Lamanki or Klamäti",
"code": "9beb2c5d-6706-476a-bdbc-7dceab25968a",
"time_to_bake_in_seconds": 2902,
"created_at": "2016-12-09T20:45:56.412Z",
"updated_at": "2016-12-09T20:45:56.412Z"
},
{
"id": 118,
"name": "Lamington",
"code": "57dad583-e694-4a22-8a1f-043cc6221fc4",
"time_to_bake_in_seconds": 3050,
"created_at": "2016-12-09T20:45:56.415Z",
"updated_at": "2016-12-09T20:45:56.415Z"
},
{
"id": 119,
"name": "Layer cake",
"code": "15fcc407-f289-4a25-993b-5a7d01516692",
"time_to_bake_in_seconds": 2911,
"created_at": "2016-12-09T20:45:56.418Z",
"updated_at": "2016-12-09T20:45:56.418Z"
},
{
"id": 120,
"name": "Lemon cake",
"code": "a3c15560-f104-44dc-b7bc-1389e151184b",
"time_to_bake_in_seconds": 3191,
"created_at": "2016-12-09T20:45:56.422Z",
"updated_at": "2016-12-09T20:45:56.422Z"
},
{
"id": 121,
"name": "Madeira cake",
"code": "d1f2fdfd-1a2f-41c0-8889-c6efeada72e6",
"time_to_bake_in_seconds": 2903,
"created_at": "2016-12-09T20:45:56.425Z",
"updated_at": "2016-12-09T20:45:56.425Z"
},
{
"id": 122,
"name": "Makowiec",
"code": "833e06d6-568e-423b-8f26-a306a3c26e49",
"time_to_bake_in_seconds": 3131,
"created_at": "2016-12-09T20:45:56.429Z",
"updated_at": "2016-12-09T20:45:56.429Z"
},
{
"id": 123,
"name": "Magdalena",
"code": "8a5419d3-6c6f-4b0a-8abb-4c13d17fb933",
"time_to_bake_in_seconds": 2962,
"created_at": "2016-12-09T20:45:56.432Z",
"updated_at": "2016-12-09T20:45:56.432Z"
},
{
"id": 124,
"name": "Mantecada",
"code": "e60d8068-3567-4d7b-adf0-1d1e363457a5",
"time_to_bake_in_seconds": 2871,
"created_at": "2016-12-09T20:45:56.436Z",
"updated_at": "2016-12-09T20:45:56.436Z"
},
{
"id": 125,
"name": "Marble cake",
"code": "6b782f4d-c65c-471f-8b79-9ffc5c3365aa",
"time_to_bake_in_seconds": 3053,
"created_at": "2016-12-09T20:45:56.439Z",
"updated_at": "2016-12-09T20:45:56.439Z"
},
{
"id": 126,
"name": "Mazurek",
"code": "6dca5b00-2575-4ce4-8794-2a145c5e1eb4",
"time_to_bake_in_seconds": 3293,
"created_at": "2016-12-09T20:45:56.442Z",
"updated_at": "2016-12-09T20:45:56.442Z"
},
{
"id": 127,
"name": "Merveilleux",
"code": "b8934c4d-34dc-4b4c-bd96-61a14f0588f2",
"time_to_bake_in_seconds": 2804,
"created_at": "2016-12-09T20:45:56.446Z",
"updated_at": "2016-12-09T20:45:56.446Z"
},
{
"id": 128,
"name": "Mille-feuille",
"code": "feef9cc1-73a7-42f4-bcb5-74bcf8522eee",
"time_to_bake_in_seconds": 3050,
"created_at": "2016-12-09T20:45:56.449Z",
"updated_at": "2016-12-09T20:45:56.449Z"
},
{
"id": 129,
"name": "Misérable cake",
"code": "8f373bc0-cadf-4c12-86e8-c6f2a6ad7ddf",
"time_to_bake_in_seconds": 3105,
"created_at": "2016-12-09T20:45:56.452Z",
"updated_at": "2016-12-09T20:45:56.452Z"
},
{
"id": 130,
"name": "Molten chocolate cake",
"code": "665bd9ef-93a9-43c7-a00f-9c46175e5984",
"time_to_bake_in_seconds": 2998,
"created_at": "2016-12-09T20:45:56.456Z",
"updated_at": "2016-12-09T20:45:56.456Z"
},
{
"id": 131,
"name": "Mooncake",
"code": "5d5e70e0-4135-4e20-ad7a-db5eef05cb85",
"time_to_bake_in_seconds": 3058,
"created_at": "2016-12-09T20:45:56.459Z",
"updated_at": "2016-12-09T20:45:56.459Z"
},
{
"id": 132,
"name": "Muffin",
"code": "e529611f-2c64-4105-a268-5c41f601a317",
"time_to_bake_in_seconds": 3109,
"created_at": "2016-12-09T20:45:56.462Z",
"updated_at": "2016-12-09T20:45:56.462Z"
},
{
"id": 133,
"name": "Napoleonshat",
"code": "bc0f4aa2-f966-4531-953c-247745b42d3b",
"time_to_bake_in_seconds": 2707,
"created_at": "2016-12-09T20:45:56.466Z",
"updated_at": "2016-12-09T20:45:56.466Z"
},
{
"id": 134,
"name": "Napeleonskake",
"code": "0ff22d32-609a-4fa8-ac52-2bca8fa1cc6d",
"time_to_bake_in_seconds": 2891,
"created_at": "2016-12-09T20:45:56.469Z",
"updated_at": "2016-12-09T20:45:56.469Z"
},
{
"id": 135,
"name": "Nasturtium cake",
"code": "25b2aacd-8547-42df-a4ef-59030690d33b",
"time_to_bake_in_seconds": 3054,
"created_at": "2016-12-09T20:45:56.473Z",
"updated_at": "2016-12-09T20:45:56.473Z"
},
{
"id": 136,
"name": "Onion cake",
"code": "dfbd0792-7d85-4ae0-bf86-3151381116b7",
"time_to_bake_in_seconds": 3075,
"created_at": "2016-12-09T20:45:56.476Z",
"updated_at": "2016-12-09T20:45:56.476Z"
},
{
"id": 137,
"name": "Oponki or Pączki",
"code": "d94c3624-c4fd-4d97-ba71-ce88c5ae0e03",
"time_to_bake_in_seconds": 3141,
"created_at": "2016-12-09T20:45:56.479Z",
"updated_at": "2016-12-09T20:45:56.479Z"
},
{
"id": 138,
"name": "Opera cake",
"code": "efcdc9fb-2422-4ec3-8107-0ec160c5256e",
"time_to_bake_in_seconds": 2700,
"created_at": "2016-12-09T20:45:56.482Z",
"updated_at": "2016-12-09T20:45:56.482Z"
},
{
"id": 139,
"name": "Orange and polenta cake",
"code": "2d4185bb-c798-4469-9a98-594f359606a1",
"time_to_bake_in_seconds": 3008,
"created_at": "2016-12-09T20:45:56.486Z",
"updated_at": "2016-12-09T20:45:56.486Z"
},
{
"id": 140,
"name": "Othellolagkage",
"code": "6d66aae0-ca6c-483a-927e-5269b730702e",
"time_to_bake_in_seconds": 3049,
"created_at": "2016-12-09T20:45:56.489Z",
"updated_at": "2016-12-09T20:45:56.489Z"
},
{
"id": 141,
"name": "Pan di Spagna",
"code": "c11ce4e6-9143-4b31-b91b-c4ee7575c124",
"time_to_bake_in_seconds": 3121,
"created_at": "2016-12-09T20:45:56.492Z",
"updated_at": "2016-12-09T20:45:56.492Z"
},
{
"id": 142,
"name": "Pancake",
"code": "2e1f4ab1-fa60-4806-a58f-577675714957",
"time_to_bake_in_seconds": 2722,
"created_at": "2016-12-09T20:45:56.496Z",
"updated_at": "2016-12-09T20:45:56.496Z"
},
{
"id": 143,
"name": "Panpepato",
"code": "2c1f59a1-02da-4d0e-b75f-e1562b7c2302",
"time_to_bake_in_seconds": 2857,
"created_at": "2016-12-09T20:45:56.500Z",
"updated_at": "2016-12-09T20:45:56.500Z"
},
{
"id": 144,
"name": "Panettone",
"code": "07e733f3-9492-4fd7-b3b5-0e0699b4752b",
"time_to_bake_in_seconds": 2818,
"created_at": "2016-12-09T20:45:56.503Z",
"updated_at": "2016-12-09T20:45:56.503Z"
},
{
"id": 145,
"name": "Parkin",
"code": "9cdee7f4-f2f3-498e-931f-1fe4599ed731",
"time_to_bake_in_seconds": 3190,
"created_at": "2016-12-09T20:45:56.507Z",
"updated_at": "2016-12-09T20:45:56.507Z"
},
{
"id": 146,
"name": "Pavlova",
"code": "593c2d34-c486-4275-80bc-f17e473caa15",
"time_to_bake_in_seconds": 3231,
"created_at": "2016-12-09T20:45:56.511Z",
"updated_at": "2016-12-09T20:45:56.511Z"
},
{
"id": 147,
"name": "Petit Gâteau",
"code": "e9e341bd-83d8-4d0f-a3cd-65c2f332c8e2",
"time_to_bake_in_seconds": 3285,
"created_at": "2016-12-09T20:45:56.514Z",
"updated_at": "2016-12-09T20:45:56.514Z"
},
{
"id": 148,
"name": "Petits fours",
"code": "7aab2482-aac6-464a-9ae7-b7ee1c3a1cc3",
"time_to_bake_in_seconds": 3269,
"created_at": "2016-12-09T20:45:56.518Z",
"updated_at": "2016-12-09T20:45:56.518Z"
},
{
"id": 149,
"name": "Piernik",
"code": "e6276627-1508-4382-ad35-c3b9e8f3ba11",
"time_to_bake_in_seconds": 2711,
"created_at": "2016-12-09T20:45:56.521Z",
"updated_at": "2016-12-09T20:45:56.521Z"
},
{
"id": 150,
"name": "Plum cake",
"code": "54910cfd-c278-4f52-b415-f7255b634c3d",
"time_to_bake_in_seconds": 2771,
"created_at": "2016-12-09T20:45:56.524Z",
"updated_at": "2016-12-09T20:45:56.524Z"
},
{
"id": 151,
"name": "Pound cake",
"code": "cf4d1145-d95f-46b8-9a88-89e87afa1e5b",
"time_to_bake_in_seconds": 3257,
"created_at": "2016-12-09T20:45:56.528Z",
"updated_at": "2016-12-09T20:45:56.528Z"
},
{
"id": 152,
"name": "Princess cake",
"code": "fdadab55-7f31-404f-8e06-32cc57501dab",
"time_to_bake_in_seconds": 3010,
"created_at": "2016-12-09T20:45:56.531Z",
"updated_at": "2016-12-09T20:45:56.531Z"
},
{
"id": 153,
"name": "Prinzregententorte",
"code": "42b70128-146c-4d29-b989-fd7ba50831aa",
"time_to_bake_in_seconds": 2749,
"created_at": "2016-12-09T20:45:56.535Z",
"updated_at": "2016-12-09T20:45:56.535Z"
},
{
"id": 154,
"name": "Pumpkin bread",
"code": "b86e91e2-02e6-41e3-ad65-5e0f82d42fa0",
"time_to_bake_in_seconds": 3206,
"created_at": "2016-12-09T20:45:56.538Z",
"updated_at": "2016-12-09T20:45:56.538Z"
},
{
"id": 155,
"name": "Punschkrapfen",
"code": "f6329c0e-f7cd-478c-b190-7b17de286b84",
"time_to_bake_in_seconds": 2860,
"created_at": "2016-12-09T20:45:56.542Z",
"updated_at": "2016-12-09T20:45:56.542Z"
},
{
"id": 156,
"name": "Queen Elizabeth cake",
"code": "5d7312d3-1967-493f-8b3a-39634ac3e7d8",
"time_to_bake_in_seconds": 3047,
"created_at": "2016-12-09T20:45:56.546Z",
"updated_at": "2016-12-09T20:45:56.546Z"
},
{
"id": 157,
"name": "Qumeshtore me pete",
"code": "136171f7-1f41-497d-bccf-d82f73bdc95d",
"time_to_bake_in_seconds": 3001,
"created_at": "2016-12-09T20:45:56.549Z",
"updated_at": "2016-12-09T20:45:56.549Z"
},
{
"id": 158,
"name": "Red bean cake",
"code": "23a0e8a2-4caf-46dd-bb6e-6df541fda1b1",
"time_to_bake_in_seconds": 3255,
"created_at": "2016-12-09T20:45:56.553Z",
"updated_at": "2016-12-09T20:45:56.553Z"
},
{
"id": 159,
"name": "Red velvet cake",
"code": "1fd54a63-4fd6-4f51-84cc-1e42c316a14d",
"time_to_bake_in_seconds": 3163,
"created_at": "2016-12-09T20:45:56.556Z",
"updated_at": "2016-12-09T20:45:56.556Z"
},
{
"id": 160,
"name": "Rum cake",
"code": "17c0b294-d103-4bcf-b242-8907c04aeffb",
"time_to_bake_in_seconds": 3074,
"created_at": "2016-12-09T20:45:56.559Z",
"updated_at": "2016-12-09T20:45:56.559Z"
},
{
"id": 161,
"name": "Rum baba",
"code": "116c27fd-5e32-460a-957f-2b2b2c059438",
"time_to_bake_in_seconds": 3256,
"created_at": "2016-12-09T20:45:56.563Z",
"updated_at": "2016-12-09T20:45:56.563Z"
},
{
"id": 162,
"name": "Ruske kape",
"code": "acdc7b01-45fc-4f37-a5e0-292ad897b155",
"time_to_bake_in_seconds": 3280,
"created_at": "2016-12-09T20:45:56.567Z",
"updated_at": "2016-12-09T20:45:56.567Z"
},
{
"id": 163,
"name": "Sachertorte",
"code": "a2caab25-e111-4d59-b4e3-0b3eee37977b",
"time_to_bake_in_seconds": 3018,
"created_at": "2016-12-09T20:45:56.570Z",
"updated_at": "2016-12-09T20:45:56.570Z"
},
{
"id": 164,
"name": "Šakotis",
"code": "3a29e169-f420-42c5-85c0-affc043cc108",
"time_to_bake_in_seconds": 2715,
"created_at": "2016-12-09T20:45:56.574Z",
"updated_at": "2016-12-09T20:45:56.574Z"
},
{
"id": 165,
"name": "Salzburger Nockerl",
"code": "273f0a62-6186-454a-8877-bfa71da9806b",
"time_to_bake_in_seconds": 2710,
"created_at": "2016-12-09T20:45:56.578Z",
"updated_at": "2016-12-09T20:45:56.578Z"
},
{
"id": 166,
"name": "Sekacz",
"code": "64170859-2c20-4046-8deb-4b2d658ec6aa",
"time_to_bake_in_seconds": 2808,
"created_at": "2016-12-09T20:45:56.581Z",
"updated_at": "2016-12-09T20:45:56.581Z"
},
{
"id": 167,
"name": "Sernik",
"code": "b03e0c95-9cd5-4fd1-88d6-11306085a68f",
"time_to_bake_in_seconds": 3193,
"created_at": "2016-12-09T20:45:56.585Z",
"updated_at": "2016-12-09T20:45:56.585Z"
},
{
"id": 168,
"name": "Sesame seed cake",
"code": "40cfbc5f-953a-46e7-8775-b031d0bff802",
"time_to_bake_in_seconds": 2755,
"created_at": "2016-12-09T20:45:56.588Z",
"updated_at": "2016-12-09T20:45:56.588Z"
},
{
"id": 169,
"name": "Sfouf",
"code": "fab430b9-c79c-4615-91f7-e136fc8f1942",
"time_to_bake_in_seconds": 2840,
"created_at": "2016-12-09T20:45:56.592Z",
"updated_at": "2016-12-09T20:45:56.592Z"
},
{
"id": 170,
"name": "Simnel cake",
"code": "96cfc06b-d10b-4f6b-87ea-ef6271bb139a",
"time_to_bake_in_seconds": 3185,
"created_at": "2016-12-09T20:45:56.595Z",
"updated_at": "2016-12-09T20:45:56.595Z"
},
{
"id": 171,
"name": "Smoked salmon cheesecake",
"code": "c95bb711-740d-41a0-a588-5a3db2811dce",
"time_to_bake_in_seconds": 3093,
"created_at": "2016-12-09T20:45:56.598Z",
"updated_at": "2016-12-09T20:45:56.598Z"
},
{
"id": 172,
"name": "Smörgåstårta",
"code": "d4b482c9-f0aa-4810-80ef-372ca7e68697",
"time_to_bake_in_seconds": 2971,
"created_at": "2016-12-09T20:45:56.602Z",
"updated_at": "2016-12-09T20:45:56.602Z"
},
{
"id": 173,
"name": "Snowball cake",
"code": "c901ba00-52d4-4bad-b026-1a3a4f23e543",
"time_to_bake_in_seconds": 2817,
"created_at": "2016-12-09T20:45:56.605Z",
"updated_at": "2016-12-09T20:45:56.605Z"
},
{
"id": 174,
"name": "Snow skin mooncake",
"code": "0514f8bf-ea6c-463d-9381-2229b64f17b2",
"time_to_bake_in_seconds": 3114,
"created_at": "2016-12-09T20:45:56.609Z",
"updated_at": "2016-12-09T20:45:56.609Z"
},
{
"id": 175,
"name": "Soufflé",
"code": "705fbb0d-4e68-4015-b211-cedcdfdbd33f",
"time_to_bake_in_seconds": 2762,
"created_at": "2016-12-09T20:45:56.612Z",
"updated_at": "2016-12-09T20:45:56.612Z"
},
{
"id": 176,
"name": "Spekkoek",
"code": "3362f540-b904-4104-87c7-9e0552f101f8",
"time_to_bake_in_seconds": 3169,
"created_at": "2016-12-09T20:45:56.616Z",
"updated_at": "2016-12-09T20:45:56.616Z"
},
{
"id": 177,
"name": "Spice cake",
"code": "9c2380ce-5198-432c-8572-0c6a1ba13bb4",
"time_to_bake_in_seconds": 3141,
"created_at": "2016-12-09T20:45:56.620Z",
"updated_at": "2016-12-09T20:45:56.620Z",
"unit_price_in_cents": 2200,
"for_sale": true,
"image_url": "Spice-Cake_8517.jpg"
},
{
"id": 178,
"name": "Spit cake",
"code": "68c0bff4-d58b-4d5b-a48a-e6f7f2469089",
"time_to_bake_in_seconds": 2701,
"created_at": "2016-12-09T20:45:56.623Z",
"updated_at": "2016-12-09T20:45:56.623Z"
},
{
"id": 179,
"name": "Sponge cake",
"code": "30616c90-443a-41fc-9aa1-504ad91ec7ba",
"time_to_bake_in_seconds": 3247,
"created_at": "2016-12-09T20:45:56.627Z",
"updated_at": "2016-12-09T20:45:56.627Z"
},
{
"id": 180,
"name": "St. Honoré cake",
"code": "3a1f6118-95e7-45c3-a26d-4b26773c69a4",
"time_to_bake_in_seconds": 2861,
"created_at": "2016-12-09T20:45:56.630Z",
"updated_at": "2016-12-09T20:45:56.630Z"
},
{
"id": 181,
"name": "Stack cake",
"code": "2e49abbd-d01f-41cd-a816-8f3340fe91d6",
"time_to_bake_in_seconds": 3199,
"created_at": "2016-12-09T20:45:56.634Z",
"updated_at": "2016-12-09T20:45:56.634Z"
},
{
"id": 182,
"name": "Strawberry cake",
"code": "607c0dd3-b429-4ac7-8323-49c602ca44ef",
"time_to_bake_in_seconds": 3282,
"created_at": "2016-12-09T20:45:56.638Z",
"updated_at": "2016-12-09T20:45:56.638Z"
},
{
"id": 183,
"name": "Streuselkuchen",
"code": "2cd78245-9bfa-49b4-8616-1405fceab4de",
"time_to_bake_in_seconds": 3187,
"created_at": "2016-12-09T20:45:56.651Z",
"updated_at": "2016-12-09T20:45:56.651Z"
},
{
"id": 184,
"name": "Studenterbrød",
"code": "1bc6b10b-20a0-4b5f-8a98-271d9a18c091",
"time_to_bake_in_seconds": 3234,
"created_at": "2016-12-09T20:45:56.655Z",
"updated_at": "2016-12-09T20:45:56.655Z"
},
{
"id": 185,
"name": "Sultana and cherry cake",
"code": "2dc6a8a9-d6ac-4794-b4b8-4b4781fc604d",
"time_to_bake_in_seconds": 3247,
"created_at": "2016-12-09T20:45:56.659Z",
"updated_at": "2016-12-09T20:45:56.659Z"
},
{
"id": 186,
"name": "Suncake",
"code": "58d3007d-1a99-44d5-9ca4-073c6810b27d",
"time_to_bake_in_seconds": 2771,
"created_at": "2016-12-09T20:45:56.662Z",
"updated_at": "2016-12-09T20:45:56.662Z"
},
{
"id": 187,
"name": "Swiss roll",
"code": "362381df-9c7e-44db-827c-097f2fb27556",
"time_to_bake_in_seconds": 2877,
"created_at": "2016-12-09T20:45:56.665Z",
"updated_at": "2016-12-09T20:45:56.665Z"
},
{
"id": 188,
"name": "Tarte Tatin",
"code": "ffbbb549-7cfc-47d5-8c97-2c56a285dfd7",
"time_to_bake_in_seconds": 3156,
"created_at": "2016-12-09T20:45:56.669Z",
"updated_at": "2016-12-09T20:45:56.669Z"
},
{
"id": 189,
"name": "Tea loaf",
"code": "8977bcb7-dd17-4975-a9eb-6aab7b03ca1a",
"time_to_bake_in_seconds": 3084,
"created_at": "2016-12-09T20:45:56.672Z",
"updated_at": "2016-12-09T20:45:56.672Z"
},
{
"id": 190,
"name": "Teacake",
"code": "681ab0bc-a238-4d3c-8cdc-dc494b18e463",
"time_to_bake_in_seconds": 3018,
"created_at": "2016-12-09T20:45:56.676Z",
"updated_at": "2016-12-09T20:45:56.676Z"
},
{
"id": 191,
"name": "Tiramisu",
"code": "36a0764c-b6a0-4831-a214-4aa7ad782163",
"time_to_bake_in_seconds": 2830,
"created_at": "2016-12-09T20:45:56.679Z",
"updated_at": "2016-12-09T20:45:56.679Z"
},
{
"id": 192,
"name": "Tompouce",
"code": "9dc1d575-2232-41f6-857a-e4f72c993766",
"time_to_bake_in_seconds": 2774,
"created_at": "2016-12-09T20:45:56.682Z",
"updated_at": "2016-12-09T20:45:56.682Z"
},
{
"id": 193,
"name": "Torta Tre Monti",
"code": "8a0a3d4c-56cc-4bd4-905d-c1bb0b2eb22b",
"time_to_bake_in_seconds": 3082,
"created_at": "2016-12-09T20:45:56.686Z",
"updated_at": "2016-12-09T20:45:56.686Z"
},
{
"id": 194,
"name": "Tres leches cake",
"code": "c4f692de-7adc-4d10-9903-d7eb91261161",
"time_to_bake_in_seconds": 2738,
"created_at": "2016-12-09T20:45:56.689Z",
"updated_at": "2016-12-09T20:45:56.689Z"
},
{
"id": 195,
"name": "Tunis cake",
"code": "aef9fd4a-1013-4be5-8524-cb6c31e25ad3",
"time_to_bake_in_seconds": 3097,
"created_at": "2016-12-09T20:45:56.692Z",
"updated_at": "2016-12-09T20:45:56.692Z"
},
{
"id": 196,
"name": "Træstammer",
"code": "bda83ca3-c29c-4db5-94d7-dd947a56a974",
"time_to_bake_in_seconds": 2955,
"created_at": "2016-12-09T20:45:56.696Z",
"updated_at": "2016-12-09T20:45:56.696Z"
},
{
"id": 197,
"name": "Upside-down cake",
"code": "80bb1562-841d-4ab5-ae42-96741cf2d8cc",
"time_to_bake_in_seconds": 3008,
"created_at": "2016-12-09T20:45:56.700Z",
"updated_at": "2016-12-09T20:45:56.700Z"
},
{
"id": 198,
"name": "Victoria sponge cake",
"code": "2af0d6d7-7a5c-45d3-b8f9-b162247031ac",
"time_to_bake_in_seconds": 3062,
"created_at": "2016-12-09T20:45:56.703Z",
"updated_at": "2016-12-09T20:45:56.703Z"
},
{
"id": 199,
"name": "Vínarterta",
"code": "e9596ddb-4797-492f-ab3c-6ea59500a152",
"time_to_bake_in_seconds": 3191,
"created_at": "2016-12-09T20:45:56.707Z",
"updated_at": "2016-12-09T20:45:56.707Z"
},
{
"id": 200,
"name": "Wedding cake",
"code": "76b7989c-1ef8-4147-8f5d-154681577194",
"time_to_bake_in_seconds": 3197,
"created_at": "2016-12-09T20:45:56.710Z",
"updated_at": "2016-12-09T20:45:56.710Z"
},
{
"id": 201,
"name": "Welsh cake",
"code": "df640d9b-6fa3-4a1b-a08e-68315f5f33a3",
"time_to_bake_in_seconds": 3035,
"created_at": "2016-12-09T20:45:56.714Z",
"updated_at": "2016-12-09T20:45:56.714Z"
},
{
"id": 202,
"name": "Whoopie pies",
"code": "7abd4284-deed-440a-a078-823e1d89b4e3",
"time_to_bake_in_seconds": 2758,
"created_at": "2016-12-09T20:45:56.718Z",
"updated_at": "2016-12-09T20:45:56.718Z",
"unit_price_in_cents": 300,
"for_sale": true,
"image_url": "WhoopiePir.jpg"
},
{
"id": 203,
"name": "Wine cake",
"code": "7bbf1053-37b2-473d-b8b7-627c69d92693",
"time_to_bake_in_seconds": 2753,
"created_at": "2016-12-09T20:45:56.721Z",
"updated_at": "2016-12-09T20:45:56.721Z"
}
]

products.each do |product|
  Product.create(
    api_id: product[:code],
    name: product[:name],
    time_to_bake_in_seconds: product[:time_to_bake_in_seconds],
    unit_price_in_cents: product[:unit_price_in_cents],
    for_sale: product[:for_sale],
    image_url: product[:image_url]
  )
end
