# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
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

# Create all prducts


products = [
{
"id": 1,
"name": "Adobe bread",
"code": "3e46954c-627a-4afc-97cc-d9ae16f62d1e",
"time_to_bake_in_seconds": 1710,
"created_at": "2016-12-06T22:07:38.323Z",
"updated_at": "2016-12-06T22:07:38.323Z"
},
{
"id": 2,
"name": "Amish friendship bread",
"code": "275bf2bb-e8ca-4961-a2a3-0c01d37d5a2b",
"time_to_bake_in_seconds": 1518,
"created_at": "2016-12-06T22:07:38.328Z",
"updated_at": "2016-12-06T22:07:38.328Z"
},
{
"id": 3,
"name": "Anadama bread",
"code": "b1274d9e-ab05-4518-b7b8-c91db72d1d2e",
"time_to_bake_in_seconds": 2031,
"created_at": "2016-12-06T22:07:38.332Z",
"updated_at": "2016-12-06T22:07:38.332Z"
},
{
"id": 4,
"name": "Banana bread",
"code": "20ef0320-dcef-4916-99bc-1fe51a483def",
"time_to_bake_in_seconds": 1605,
"created_at": "2016-12-06T22:07:38.337Z",
"updated_at": "2016-12-06T22:07:38.337Z"
},
{
"id": 5,
"name": "Beaten biscuit",
"code": "953494c7-f720-4dde-a9ec-bcc2dbc22a9f",
"time_to_bake_in_seconds": 1958,
"created_at": "2016-12-06T22:07:38.341Z",
"updated_at": "2016-12-06T22:07:38.341Z"
},
{
"id": 6,
"name": "Biscuit",
"code": "f830a253-1af5-4128-abfd-b33c7992958a",
"time_to_bake_in_seconds": 1527,
"created_at": "2016-12-06T22:07:38.347Z",
"updated_at": "2016-12-06T22:07:38.347Z"
},
{
"id": 7,
"name": "Brown bread",
"code": "fc0a3b61-abe7-4f6a-9610-10fec84aae2c",
"time_to_bake_in_seconds": 1067,
"created_at": "2016-12-06T22:07:38.355Z",
"updated_at": "2016-12-06T22:07:38.355Z"
},
{
"id": 8,
"name": "Bulkie roll",
"code": "1e900725-6f13-4f55-8bd6-bda55baac165",
"time_to_bake_in_seconds": 1805,
"created_at": "2016-12-06T22:07:38.360Z",
"updated_at": "2016-12-06T22:07:38.360Z"
},
{
"id": 9,
"name": "Cornbread",
"code": "f5f79017-a1f9-426d-b008-4225f9663744",
"time_to_bake_in_seconds": 1939,
"created_at": "2016-12-06T22:07:38.365Z",
"updated_at": "2016-12-06T22:07:38.365Z"
},
{
"id": 10,
"name": "Cuban bread",
"code": "514bfb44-9661-4f0e-803a-09349adbc643",
"time_to_bake_in_seconds": 1686,
"created_at": "2016-12-06T22:07:38.370Z",
"updated_at": "2016-12-06T22:07:38.370Z"
},
{
"id": 11,
"name": "Frybread",
"code": "8e4751b3-ac48-44a5-9064-f4160712455a",
"time_to_bake_in_seconds": 1509,
"created_at": "2016-12-06T22:07:38.374Z",
"updated_at": "2016-12-06T22:07:38.374Z"
},
{
"id": 12,
"name": "Graham bread",
"code": "6258b379-88ea-46a7-9ace-156ba94e9355",
"time_to_bake_in_seconds": 1772,
"created_at": "2016-12-06T22:07:38.379Z",
"updated_at": "2016-12-06T22:07:38.379Z"
},
{
"id": 13,
"name": "Hot water corn bread",
"code": "4719f89c-4596-40c5-8e59-f40215d76b03",
"time_to_bake_in_seconds": 1625,
"created_at": "2016-12-06T22:07:38.384Z",
"updated_at": "2016-12-06T22:07:38.384Z"
},
{
"id": 14,
"name": "Hushpuppy",
"code": "83d372a9-1af3-40d9-80ad-ac1b489cf220",
"time_to_bake_in_seconds": 1733,
"created_at": "2016-12-06T22:07:38.389Z",
"updated_at": "2016-12-06T22:07:38.389Z"
},
{
"id": 15,
"name": "Muffin",
"code": "6ba04176-427c-47c2-ba87-aeb8156ec462",
"time_to_bake_in_seconds": 1425,
"created_at": "2016-12-06T22:07:38.393Z",
"updated_at": "2016-12-06T22:07:38.393Z"
},
{
"id": 16,
"name": "Muffuletta",
"code": "47b35f1e-69f4-499b-9c69-990fd8b0b34b",
"time_to_bake_in_seconds": 1631,
"created_at": "2016-12-06T22:07:38.398Z",
"updated_at": "2016-12-06T22:07:38.398Z"
},
{
"id": 17,
"name": "Parker House roll",
"code": "06fcc177-1208-4f09-9352-dbf47d36f5dc",
"time_to_bake_in_seconds": 1642,
"created_at": "2016-12-06T22:07:38.402Z",
"updated_at": "2016-12-06T22:07:38.402Z"
},
{
"id": 18,
"name": "Pepperoni roll",
"code": "ea56550f-1857-447e-9ee8-fdf67ebdbbfb",
"time_to_bake_in_seconds": 1967,
"created_at": "2016-12-06T22:07:38.408Z",
"updated_at": "2016-12-06T22:07:38.408Z"
},
{
"id": 19,
"name": "Popover",
"code": "88efc351-095d-4288-b94a-544d57edc93c",
"time_to_bake_in_seconds": 2060,
"created_at": "2016-12-06T22:07:38.412Z",
"updated_at": "2016-12-06T22:07:38.412Z"
},
{
"id": 20,
"name": "Pullman loaf",
"code": "9c834e51-9b07-4d5d-9571-6f6a7c510d46",
"time_to_bake_in_seconds": 1905,
"created_at": "2016-12-06T22:07:38.418Z",
"updated_at": "2016-12-06T22:07:38.418Z"
},
{
"id": 21,
"name": "Salt-rising bread",
"code": "db5c9df3-4d45-4db8-a2bf-da2e89cf4ece",
"time_to_bake_in_seconds": 1751,
"created_at": "2016-12-06T22:07:38.429Z",
"updated_at": "2016-12-06T22:07:38.429Z"
},
{
"id": 22,
"name": "Scali bread",
"code": "6506b690-78d0-4133-89f2-860451f69e70",
"time_to_bake_in_seconds": 1800,
"created_at": "2016-12-06T22:07:38.435Z",
"updated_at": "2016-12-06T22:07:38.435Z"
},
{
"id": 23,
"name": "Sloosh",
"code": "2b98468e-4252-4de4-96b1-65e850dfdf8c",
"time_to_bake_in_seconds": 1523,
"created_at": "2016-12-06T22:07:38.440Z",
"updated_at": "2016-12-06T22:07:38.440Z"
},
{
"id": 24,
"name": "Texas toast",
"code": "5dc1b96d-2b09-4312-8924-b236a502c286",
"time_to_bake_in_seconds": 1410,
"created_at": "2016-12-06T22:07:38.445Z",
"updated_at": "2016-12-06T22:07:38.445Z"
},
{
"id": 25,
"name": "Angel food cake",
"code": "d2041cb2-2426-4946-b7b7-88d5c1144ad7",
"time_to_bake_in_seconds": 3097,
"created_at": "2016-12-06T22:07:38.449Z",
"updated_at": "2016-12-06T22:07:38.449Z"
},
{
"id": 26,
"name": "Apple cake",
"code": "d7f32069-35bc-4f19-9d40-86a832026b32",
"time_to_bake_in_seconds": 2940,
"created_at": "2016-12-06T22:07:38.455Z",
"updated_at": "2016-12-06T22:07:38.455Z"
},
{
"id": 27,
"name": "Applesauce cake",
"code": "30cc1909-4874-48da-9b84-5e338afeaddb",
"time_to_bake_in_seconds": 3083,
"created_at": "2016-12-06T22:07:38.461Z",
"updated_at": "2016-12-06T22:07:38.461Z"
},
{
"id": 28,
"name": "Aranygaluska",
"code": "68dd62bb-39f8-424f-9dd3-d79d1f807b12",
"time_to_bake_in_seconds": 2980,
"created_at": "2016-12-06T22:07:38.467Z",
"updated_at": "2016-12-06T22:07:38.467Z"
},
{
"id": 29,
"name": "Avocado cake",
"code": "9c315e8e-e8d5-46e7-96fc-4ba317ae4f35",
"time_to_bake_in_seconds": 2864,
"created_at": "2016-12-06T22:07:38.472Z",
"updated_at": "2016-12-06T22:07:38.472Z"
},
{
"id": 30,
"name": "Babka",
"code": "df669b4a-f2ea-40b9-bb92-92ce4654c916",
"time_to_bake_in_seconds": 2791,
"created_at": "2016-12-06T22:07:38.477Z",
"updated_at": "2016-12-06T22:07:38.477Z"
},
{
"id": 31,
"name": "Ballokume",
"code": "2a4c9a2e-6f09-4a5d-b0b9-9a7183ace593",
"time_to_bake_in_seconds": 3291,
"created_at": "2016-12-06T22:07:38.483Z",
"updated_at": "2016-12-06T22:07:38.483Z"
},
{
"id": 32,
"name": "Banana cake",
"code": "943471b1-996e-48a0-ab5e-fe08d8bb7f3b",
"time_to_bake_in_seconds": 2809,
"created_at": "2016-12-06T22:07:38.489Z",
"updated_at": "2016-12-06T22:07:38.489Z"
},
{
"id": 33,
"name": "Basbousa",
"code": "75de8d5a-695f-4024-bdfe-236ef71b5563",
"time_to_bake_in_seconds": 3256,
"created_at": "2016-12-06T22:07:38.494Z",
"updated_at": "2016-12-06T22:07:38.494Z"
},
{
"id": 34,
"name": "Beer cake",
"code": "bd58db11-8382-4712-9546-324cfeb82027",
"time_to_bake_in_seconds": 2727,
"created_at": "2016-12-06T22:07:38.501Z",
"updated_at": "2016-12-06T22:07:38.501Z"
},
{
"id": 35,
"name": "Better than sex cake",
"code": "6ed7b44b-59b6-47a1-8408-c46972e63e35",
"time_to_bake_in_seconds": 2773,
"created_at": "2016-12-06T22:07:38.505Z",
"updated_at": "2016-12-06T22:07:38.505Z"
},
{
"id": 36,
"name": "Boston cream pie",
"code": "d2aa67ea-b707-478d-a345-c1fb4e876289",
"time_to_bake_in_seconds": 2878,
"created_at": "2016-12-06T22:07:38.509Z",
"updated_at": "2016-12-06T22:07:38.509Z"
},
{
"id": 37,
"name": "Banana cake/bread",
"code": "8fa59924-1532-498e-9ab5-17d7097d8268",
"time_to_bake_in_seconds": 3083,
"created_at": "2016-12-06T22:07:38.515Z",
"updated_at": "2016-12-06T22:07:38.515Z"
},
{
"id": 38,
"name": "Banoffee pie",
"code": "1a890c5c-5d3f-4d7d-affa-17f8da14cd27",
"time_to_bake_in_seconds": 2997,
"created_at": "2016-12-06T22:07:38.520Z",
"updated_at": "2016-12-06T22:07:38.520Z"
},
{
"id": 39,
"name": "Bara brith",
"code": "a3a61ed4-3709-4236-9ff3-a74c5f1215b3",
"time_to_bake_in_seconds": 2765,
"created_at": "2016-12-06T22:07:38.525Z",
"updated_at": "2016-12-06T22:07:38.525Z"
},
{
"id": 40,
"name": "Battenberg cake",
"code": "f47e1910-788a-4a30-aa55-be656b230e9f",
"time_to_bake_in_seconds": 2859,
"created_at": "2016-12-06T22:07:38.529Z",
"updated_at": "2016-12-06T22:07:38.529Z"
},
{
"id": 41,
"name": "Baumkuchen",
"code": "04964385-f70f-4179-a3e8-2a3efa41780b",
"time_to_bake_in_seconds": 3168,
"created_at": "2016-12-06T22:07:38.533Z",
"updated_at": "2016-12-06T22:07:38.533Z"
},
{
"id": 42,
"name": "Bibingka",
"code": "a29be074-3c6e-498a-a39e-61a593350f21",
"time_to_bake_in_seconds": 3067,
"created_at": "2016-12-06T22:07:38.538Z",
"updated_at": "2016-12-06T22:07:38.538Z"
},
{
"id": 43,
"name": "Bienenstich Bee Sting",
"code": "2fac5155-d2b0-4780-b9cc-6937bee8d101",
"time_to_bake_in_seconds": 3290,
"created_at": "2016-12-06T22:07:38.543Z",
"updated_at": "2016-12-06T22:07:38.543Z"
},
{
"id": 44,
"name": "Birthday cake",
"code": "790e2e9e-e72e-434c-83f2-4bf25c69b87a",
"time_to_bake_in_seconds": 3086,
"created_at": "2016-12-06T22:07:38.547Z",
"updated_at": "2016-12-06T22:07:38.547Z"
},
{
"id": 45,
"name": "Bizcocho Dominicano",
"code": "60d1b874-9879-479e-9588-f990013a9f08",
"time_to_bake_in_seconds": 3120,
"created_at": "2016-12-06T22:07:38.552Z",
"updated_at": "2016-12-06T22:07:38.552Z"
},
{
"id": 46,
"name": "Black Forest cake",
"code": "0bdadd06-a81a-4d36-b4e2-756c15dfaeb5",
"time_to_bake_in_seconds": 3139,
"created_at": "2016-12-06T22:07:38.557Z",
"updated_at": "2016-12-06T22:07:38.557Z"
},
{
"id": 47,
"name": "Blitztorte",
"code": "e481cb29-0694-44e1-970a-f5bf69db5753",
"time_to_bake_in_seconds": 2768,
"created_at": "2016-12-06T22:07:38.560Z",
"updated_at": "2016-12-06T22:07:38.560Z"
},
{
"id": 48,
"name": "Blondie",
"code": "1cea35a0-d211-4c47-8356-45aae6afa84e",
"time_to_bake_in_seconds": 2905,
"created_at": "2016-12-06T22:07:38.564Z",
"updated_at": "2016-12-06T22:07:38.564Z"
},
{
"id": 49,
"name": "Bolo de mel",
"code": "b6470e4a-e9bd-4e4a-8e13-f22419ccbfb6",
"time_to_bake_in_seconds": 3053,
"created_at": "2016-12-06T22:07:38.568Z",
"updated_at": "2016-12-06T22:07:38.568Z"
},
{
"id": 50,
"name": "Brazil nut cake",
"code": "3bf40a12-eb6c-4b78-a24e-1dd06b242ead",
"time_to_bake_in_seconds": 2925,
"created_at": "2016-12-06T22:07:38.574Z",
"updated_at": "2016-12-06T22:07:38.574Z"
},
{
"id": 51,
"name": "Brownie",
"code": "2ca1c26b-817f-456a-9370-7ec8be04b6ca",
"time_to_bake_in_seconds": 3006,
"created_at": "2016-12-06T22:07:38.579Z",
"updated_at": "2016-12-06T22:07:38.579Z"
},
{
"id": 52,
"name": "Buccellato",
"code": "359ff748-81f4-4c68-a6c7-eab6baa4b485",
"time_to_bake_in_seconds": 3226,
"created_at": "2016-12-06T22:07:38.583Z",
"updated_at": "2016-12-06T22:07:38.583Z"
},
{
"id": 53,
"name": "Budapestlängd",
"code": "824feb12-9233-48ba-b6f7-c082ae148691",
"time_to_bake_in_seconds": 2878,
"created_at": "2016-12-06T22:07:38.587Z",
"updated_at": "2016-12-06T22:07:38.587Z"
},
{
"id": 54,
"name": "Bundt cake",
"code": "c50b506c-577d-452f-ba7d-669715fe5f65",
"time_to_bake_in_seconds": 3066,
"created_at": "2016-12-06T22:07:38.591Z",
"updated_at": "2016-12-06T22:07:38.591Z"
},
{
"id": 55,
"name": "Butter cake",
"code": "28d2758d-f58e-4a53-9d39-63243fff61c0",
"time_to_bake_in_seconds": 3057,
"created_at": "2016-12-06T22:07:38.596Z",
"updated_at": "2016-12-06T22:07:38.596Z"
},
{
"id": 56,
"name": "Butterfly cake",
"code": "ee75955b-80f4-45f8-a1b9-d9624574f3bb",
"time_to_bake_in_seconds": 2954,
"created_at": "2016-12-06T22:07:38.600Z",
"updated_at": "2016-12-06T22:07:38.600Z"
},
{
"id": 57,
"name": "Cassata",
"code": "37537375-5083-4629-997d-d8b695a553a3",
"time_to_bake_in_seconds": 3113,
"created_at": "2016-12-06T22:07:38.605Z",
"updated_at": "2016-12-06T22:07:38.605Z"
},
{
"id": 58,
"name": "Carrot cake",
"code": "fd4d91ed-5ddb-441a-beb3-95cdd06007e9",
"time_to_bake_in_seconds": 3040,
"created_at": "2016-12-06T22:07:38.609Z",
"updated_at": "2016-12-06T22:07:38.609Z"
},
{
"id": 59,
"name": "Cheesecake",
"code": "9d2c7de7-558a-4744-9ee9-7cd7f467a380",
"time_to_bake_in_seconds": 3278,
"created_at": "2016-12-06T22:07:38.614Z",
"updated_at": "2016-12-06T22:07:38.614Z"
},
{
"id": 60,
"name": "Chestnut cake",
"code": "abb1668d-1b00-4ced-a535-fa97fe8ec4dd",
"time_to_bake_in_seconds": 2932,
"created_at": "2016-12-06T22:07:38.619Z",
"updated_at": "2016-12-06T22:07:38.619Z"
},
{
"id": 61,
"name": "Chiffon cake",
"code": "aa7e7987-342e-4c13-8685-baa94041cec0",
"time_to_bake_in_seconds": 2964,
"created_at": "2016-12-06T22:07:38.623Z",
"updated_at": "2016-12-06T22:07:38.623Z"
},
{
"id": 62,
"name": "Chocolate cake",
"code": "08e72123-b8d8-410d-9c8b-ec6a5fc8537a",
"time_to_bake_in_seconds": 3148,
"created_at": "2016-12-06T22:07:38.627Z",
"updated_at": "2016-12-06T22:07:38.627Z"
},
{
"id": 63,
"name": "Christmas cake",
"code": "8f341f7e-7572-46db-83f6-e58c68b431ce",
"time_to_bake_in_seconds": 2870,
"created_at": "2016-12-06T22:07:38.632Z",
"updated_at": "2016-12-06T22:07:38.632Z"
},
{
"id": 64,
"name": "Clementine cake",
"code": "b34ca0d7-4f48-491c-ad54-98cac8d56717",
"time_to_bake_in_seconds": 3227,
"created_at": "2016-12-06T22:07:38.636Z",
"updated_at": "2016-12-06T22:07:38.636Z"
},
{
"id": 65,
"name": "Coconut cake",
"code": "f2d3a00f-e5a8-4611-8355-70c1463b9690",
"time_to_bake_in_seconds": 3210,
"created_at": "2016-12-06T22:07:38.644Z",
"updated_at": "2016-12-06T22:07:38.644Z"
},
{
"id": 66,
"name": "Coffee cake",
"code": "3e835537-7a19-43ea-8e2a-3d5e75c8d233",
"time_to_bake_in_seconds": 2705,
"created_at": "2016-12-06T22:07:38.654Z",
"updated_at": "2016-12-06T22:07:38.654Z"
},
{
"id": 67,
"name": "Cremeschnitte",
"code": "f7399041-a993-4e20-9eaf-065e7b1af8ee",
"time_to_bake_in_seconds": 3023,
"created_at": "2016-12-06T22:07:38.660Z",
"updated_at": "2016-12-06T22:07:38.660Z"
},
{
"id": 68,
"name": "Croquembouche",
"code": "a120de2a-c888-49d8-b3e7-38da69f1da6d",
"time_to_bake_in_seconds": 2954,
"created_at": "2016-12-06T22:07:38.665Z",
"updated_at": "2016-12-06T22:07:38.665Z"
},
{
"id": 69,
"name": "Crystal cake",
"code": "1cfda9ba-6691-435b-a51a-6c477fa26a94",
"time_to_bake_in_seconds": 2948,
"created_at": "2016-12-06T22:07:38.669Z",
"updated_at": "2016-12-06T22:07:38.669Z"
},
{
"id": 70,
"name": "Cuatro leches cake",
"code": "6dab2560-eba5-4873-9565-7d15c8e784a0",
"time_to_bake_in_seconds": 3238,
"created_at": "2016-12-06T22:07:38.674Z",
"updated_at": "2016-12-06T22:07:38.674Z"
},
{
"id": 71,
"name": "Cucumber cake",
"code": "e822581a-dbe7-4415-9366-30556895bec6",
"time_to_bake_in_seconds": 3212,
"created_at": "2016-12-06T22:07:38.678Z",
"updated_at": "2016-12-06T22:07:38.678Z"
},
{
"id": 72,
"name": "Cupcake",
"code": "17f6684f-2e3d-43e3-8e46-a934e32cd033",
"time_to_bake_in_seconds": 3296,
"created_at": "2016-12-06T22:07:38.683Z",
"updated_at": "2016-12-06T22:07:38.683Z"
},
{
"id": 73,
"name": "Dacquoise",
"code": "1f23987a-a849-4bf7-859a-eb2c6be40570",
"time_to_bake_in_seconds": 2717,
"created_at": "2016-12-06T22:07:38.688Z",
"updated_at": "2016-12-06T22:07:38.688Z"
},
{
"id": 74,
"name": "Date and walnut loaf",
"code": "28e2d3c6-ede0-4aec-86fc-28449ef77eea",
"time_to_bake_in_seconds": 3162,
"created_at": "2016-12-06T22:07:38.693Z",
"updated_at": "2016-12-06T22:07:38.693Z"
},
{
"id": 75,
"name": "Date square",
"code": "394e7f97-8578-4f95-925d-16b788bdcf30",
"time_to_bake_in_seconds": 3288,
"created_at": "2016-12-06T22:07:38.700Z",
"updated_at": "2016-12-06T22:07:38.700Z"
},
{
"id": 76,
"name": "Depression cake",
"code": "d96bb6b6-82e1-428b-ae09-1d17fde32873",
"time_to_bake_in_seconds": 2961,
"created_at": "2016-12-06T22:07:38.704Z",
"updated_at": "2016-12-06T22:07:38.704Z"
},
{
"id": 77,
"name": "Devil's food cake",
"code": "b936a936-b0a2-413c-a588-036c24008d2d",
"time_to_bake_in_seconds": 2784,
"created_at": "2016-12-06T22:07:38.709Z",
"updated_at": "2016-12-06T22:07:38.709Z"
},
{
"id": 78,
"name": "Dobos cake",
"code": "dccc5974-7bc1-4f3a-ba66-8ac41bb0881e",
"time_to_bake_in_seconds": 3107,
"created_at": "2016-12-06T22:07:38.714Z",
"updated_at": "2016-12-06T22:07:38.714Z"
},
{
"id": 79,
"name": "Dundee cake",
"code": "82047689-dea4-4d0f-865e-56661710a1a5",
"time_to_bake_in_seconds": 2827,
"created_at": "2016-12-06T22:07:38.722Z",
"updated_at": "2016-12-06T22:07:38.722Z"
},
{
"id": 80,
"name": "Eccles cake",
"code": "8de6df9b-b6d9-4aac-b786-f8977ccaab91",
"time_to_bake_in_seconds": 2863,
"created_at": "2016-12-06T22:07:38.727Z",
"updated_at": "2016-12-06T22:07:38.727Z"
},
{
"id": 81,
"name": "Esterházy torte",
"code": "3376dfc3-e62b-48d0-ad61-5df2d126f7c3",
"time_to_bake_in_seconds": 3263,
"created_at": "2016-12-06T22:07:38.732Z",
"updated_at": "2016-12-06T22:07:38.732Z"
},
{
"id": 82,
"name": "Fat rascal",
"code": "dfee9f60-ed3c-4c22-8e0b-c4efeead556b",
"time_to_bake_in_seconds": 2733,
"created_at": "2016-12-06T22:07:38.737Z",
"updated_at": "2016-12-06T22:07:38.737Z"
},
{
"id": 83,
"name": "Faworki",
"code": "d5749c92-e1a6-4a4a-b796-7d8e2f1d22da",
"time_to_bake_in_seconds": 2829,
"created_at": "2016-12-06T22:07:38.743Z",
"updated_at": "2016-12-06T22:07:38.743Z"
},
{
"id": 84,
"name": "Fig cake",
"code": "38d95f21-4956-463a-808c-f74d452a44fc",
"time_to_bake_in_seconds": 2876,
"created_at": "2016-12-06T22:07:38.747Z",
"updated_at": "2016-12-06T22:07:38.747Z"
},
{
"id": 85,
"name": "Financier",
"code": "5c00fbb6-4f30-4ea1-aaa5-441a9ce07ead",
"time_to_bake_in_seconds": 2840,
"created_at": "2016-12-06T22:07:38.757Z",
"updated_at": "2016-12-06T22:07:38.757Z"
},
{
"id": 86,
"name": "Flourless chocolate cake",
"code": "6b56efeb-fb88-4b4d-a532-df2677522fd2",
"time_to_bake_in_seconds": 2867,
"created_at": "2016-12-06T22:07:38.768Z",
"updated_at": "2016-12-06T22:07:38.768Z"
},
{
"id": 87,
"name": "Fondant Fancy",
"code": "e49fad50-ad24-4d7c-880a-f4578b7904b3",
"time_to_bake_in_seconds": 2705,
"created_at": "2016-12-06T22:07:38.772Z",
"updated_at": "2016-12-06T22:07:38.772Z"
},
{
"id": 88,
"name": "Fragelité",
"code": "89c9926e-1f2e-4840-a3a1-31ef39ac04a3",
"time_to_bake_in_seconds": 3042,
"created_at": "2016-12-06T22:07:38.776Z",
"updated_at": "2016-12-06T22:07:38.776Z"
},
{
"id": 89,
"name": "Frog cake",
"code": "3a9bbc77-2290-4e56-876b-200fb51e2a51",
"time_to_bake_in_seconds": 3067,
"created_at": "2016-12-06T22:07:38.788Z",
"updated_at": "2016-12-06T22:07:38.788Z"
},
{
"id": 90,
"name": "Fruitcake",
"code": "b9309349-8f65-4867-9a76-d22725df8426",
"time_to_bake_in_seconds": 3089,
"created_at": "2016-12-06T22:07:38.792Z",
"updated_at": "2016-12-06T22:07:38.792Z"
},
{
"id": 91,
"name": "Fountain cake",
"code": "1c837158-cb82-4e91-908e-8b96ea1a2bc7",
"time_to_bake_in_seconds": 2843,
"created_at": "2016-12-06T22:07:38.798Z",
"updated_at": "2016-12-06T22:07:38.798Z"
},
{
"id": 92,
"name": "Funing big cake",
"code": "21a35565-2b9e-491b-8760-40f56a8041d7",
"time_to_bake_in_seconds": 2831,
"created_at": "2016-12-06T22:07:38.804Z",
"updated_at": "2016-12-06T22:07:38.804Z"
},
{
"id": 93,
"name": "Genoa cake",
"code": "de135ab0-2dbc-4fe4-93f0-e32211ab07b8",
"time_to_bake_in_seconds": 2870,
"created_at": "2016-12-06T22:07:38.812Z",
"updated_at": "2016-12-06T22:07:38.812Z"
},
{
"id": 94,
"name": "Genoise Genoese cake",
"code": "bb2fde21-cdf8-4581-b126-9b66d180e3a5",
"time_to_bake_in_seconds": 2977,
"created_at": "2016-12-06T22:07:38.818Z",
"updated_at": "2016-12-06T22:07:38.818Z"
},
{
"id": 95,
"name": "German Chocolate Cake",
"code": "3629033c-1b63-4e9a-af58-da76bbc61484",
"time_to_bake_in_seconds": 3042,
"created_at": "2016-12-06T22:07:38.823Z",
"updated_at": "2016-12-06T22:07:38.823Z"
},
{
"id": 96,
"name": "Gingerbread",
"code": "59cee422-9ff8-4a39-bdbc-a4c1ab064c5e",
"time_to_bake_in_seconds": 3087,
"created_at": "2016-12-06T22:07:38.828Z",
"updated_at": "2016-12-06T22:07:38.828Z"
},
{
"id": 97,
"name": "Goose Breast",
"code": "840dc4c7-36df-42b6-bd06-a053767bcc07",
"time_to_bake_in_seconds": 2747,
"created_at": "2016-12-06T22:07:38.832Z",
"updated_at": "2016-12-06T22:07:38.832Z"
},
{
"id": 98,
"name": "Halloween cake",
"code": "48cea204-ab05-4824-a642-ae7e8510151d",
"time_to_bake_in_seconds": 2941,
"created_at": "2016-12-06T22:07:38.837Z",
"updated_at": "2016-12-06T22:07:38.837Z"
},
{
"id": 99,
"name": "Hash brownies",
"code": "f19e492e-34c6-479a-8d62-bbdb8af2807c",
"time_to_bake_in_seconds": 2847,
"created_at": "2016-12-06T22:07:38.841Z",
"updated_at": "2016-12-06T22:07:38.841Z"
},
{
"id": 100,
"name": "Hot milk cake",
"code": "7bd944a2-4e9e-49e2-8a32-65cfd1178c5d",
"time_to_bake_in_seconds": 2911,
"created_at": "2016-12-06T22:07:38.852Z",
"updated_at": "2016-12-06T22:07:38.852Z"
},
{
"id": 101,
"name": "Ice cream cake",
"code": "e629783a-a15e-400c-9bb7-2ef7c8f58821",
"time_to_bake_in_seconds": 2703,
"created_at": "2016-12-06T22:07:38.859Z",
"updated_at": "2016-12-06T22:07:38.859Z"
},
{
"id": 102,
"name": "Jaffa Cakes",
"code": "82e01bb9-ee18-4fea-92ac-a5192c401c49",
"time_to_bake_in_seconds": 2993,
"created_at": "2016-12-06T22:07:38.863Z",
"updated_at": "2016-12-06T22:07:38.863Z"
},
{
"id": 103,
"name": "Kabuni",
"code": "d3d643a3-b791-4e16-ac0e-46e361047571",
"time_to_bake_in_seconds": 3032,
"created_at": "2016-12-06T22:07:38.872Z",
"updated_at": "2016-12-06T22:07:38.872Z"
},
{
"id": 104,
"name": "Karpatka",
"code": "293d7b7a-0733-4019-a0de-a7316267638d",
"time_to_bake_in_seconds": 2888,
"created_at": "2016-12-06T22:07:38.878Z",
"updated_at": "2016-12-06T22:07:38.878Z"
},
{
"id": 105,
"name": "Kiev cake",
"code": "7707ee39-1e0d-4b30-bb4c-d08af9776e48",
"time_to_bake_in_seconds": 3155,
"created_at": "2016-12-06T22:07:38.888Z",
"updated_at": "2016-12-06T22:07:38.888Z"
},
{
"id": 106,
"name": "King cake",
"code": "2858e6b0-dc72-4b9f-a7be-f011fe819e34",
"time_to_bake_in_seconds": 2786,
"created_at": "2016-12-06T22:07:38.905Z",
"updated_at": "2016-12-06T22:07:38.905Z"
},
{
"id": 107,
"name": "Kladdkaka",
"code": "90896085-3fb4-4145-a1ff-2f550afd722e",
"time_to_bake_in_seconds": 3113,
"created_at": "2016-12-06T22:07:38.910Z",
"updated_at": "2016-12-06T22:07:38.910Z"
},
{
"id": 108,
"name": "Kliņģeris",
"code": "b715095e-7067-4f88-86d5-18a76910de29",
"time_to_bake_in_seconds": 2733,
"created_at": "2016-12-06T22:07:38.918Z",
"updated_at": "2016-12-06T22:07:38.918Z"
},
{
"id": 109,
"name": "Kołacz",
"code": "9584b775-833b-42b2-b0c5-154b0e1fba7d",
"time_to_bake_in_seconds": 3016,
"created_at": "2016-12-06T22:07:38.930Z",
"updated_at": "2016-12-06T22:07:38.930Z"
},
{
"id": 110,
"name": "Kolaczki",
"code": "50a56a84-d937-41bc-93b7-2f3f6d0e56cc",
"time_to_bake_in_seconds": 3273,
"created_at": "2016-12-06T22:07:38.938Z",
"updated_at": "2016-12-06T22:07:38.938Z"
},
{
"id": 111,
"name": "Kouign-amann",
"code": "bf99231e-e7ad-41b4-906d-b13bb59a7d69",
"time_to_bake_in_seconds": 2824,
"created_at": "2016-12-06T22:07:38.943Z",
"updated_at": "2016-12-06T22:07:38.943Z"
},
{
"id": 112,
"name": "Kutia",
"code": "10328983-0113-43cb-8f0f-9fbc090ab959",
"time_to_bake_in_seconds": 3275,
"created_at": "2016-12-06T22:07:38.949Z",
"updated_at": "2016-12-06T22:07:38.949Z"
},
{
"id": 113,
"name": "Kransekake",
"code": "25ed0491-216d-4c49-a50a-6c2fd9d3d89c",
"time_to_bake_in_seconds": 3068,
"created_at": "2016-12-06T22:07:38.953Z",
"updated_at": "2016-12-06T22:07:38.953Z"
},
{
"id": 114,
"name": "Kremówka",
"code": "62bde632-e0ee-4d14-a242-44fe07b45121",
"time_to_bake_in_seconds": 2708,
"created_at": "2016-12-06T22:07:38.959Z",
"updated_at": "2016-12-06T22:07:38.959Z"
},
{
"id": 115,
"name": "Krówka",
"code": "6d49cd7d-e93b-411e-b2c6-4f61dc9a4d2b",
"time_to_bake_in_seconds": 3211,
"created_at": "2016-12-06T22:07:38.964Z",
"updated_at": "2016-12-06T22:07:38.964Z"
},
{
"id": 116,
"name": "Lady Baltimore cake",
"code": "f02fdcf6-8b9c-4d75-af29-fd5f827c870f",
"time_to_bake_in_seconds": 3039,
"created_at": "2016-12-06T22:07:38.970Z",
"updated_at": "2016-12-06T22:07:38.970Z"
},
{
"id": 117,
"name": "Lamanki or Klamäti",
"code": "25083b8a-7b86-4da2-82c7-fb4e7e282dac",
"time_to_bake_in_seconds": 2974,
"created_at": "2016-12-06T22:07:38.975Z",
"updated_at": "2016-12-06T22:07:38.975Z"
},
{
"id": 118,
"name": "Lamington",
"code": "9f52663c-e7a5-4f73-aae2-306bc5d3a8f1",
"time_to_bake_in_seconds": 3262,
"created_at": "2016-12-06T22:07:38.980Z",
"updated_at": "2016-12-06T22:07:38.980Z"
},
{
"id": 119,
"name": "Layer cake",
"code": "e3039068-2b44-4470-97d6-8bc098951615",
"time_to_bake_in_seconds": 3163,
"created_at": "2016-12-06T22:07:38.987Z",
"updated_at": "2016-12-06T22:07:38.987Z"
},
{
"id": 120,
"name": "Lemon cake",
"code": "1f78f2f9-f685-4e83-b6bf-80806661dd77",
"time_to_bake_in_seconds": 2829,
"created_at": "2016-12-06T22:07:38.994Z",
"updated_at": "2016-12-06T22:07:38.994Z"
},
{
"id": 121,
"name": "Madeira cake",
"code": "bc0407fa-2d83-44f1-a22c-38862cbde8da",
"time_to_bake_in_seconds": 3120,
"created_at": "2016-12-06T22:07:38.999Z",
"updated_at": "2016-12-06T22:07:38.999Z"
},
{
"id": 122,
"name": "Makowiec",
"code": "363c9dc9-e7aa-4a16-9c70-f34c22ae2eaf",
"time_to_bake_in_seconds": 3093,
"created_at": "2016-12-06T22:07:39.004Z",
"updated_at": "2016-12-06T22:07:39.004Z"
},
{
"id": 123,
"name": "Magdalena",
"code": "bbdd5923-e11d-479a-94c1-910bcff566f0",
"time_to_bake_in_seconds": 2971,
"created_at": "2016-12-06T22:07:39.011Z",
"updated_at": "2016-12-06T22:07:39.011Z"
},
{
"id": 124,
"name": "Mantecada",
"code": "5cfd2032-108c-4bfd-b0d6-f186655ee037",
"time_to_bake_in_seconds": 3027,
"created_at": "2016-12-06T22:07:39.015Z",
"updated_at": "2016-12-06T22:07:39.015Z"
},
{
"id": 125,
"name": "Marble cake",
"code": "dfd785ff-2b04-462a-9e7b-80f50b0e6e9b",
"time_to_bake_in_seconds": 2776,
"created_at": "2016-12-06T22:07:39.021Z",
"updated_at": "2016-12-06T22:07:39.021Z"
},
{
"id": 126,
"name": "Mazurek",
"code": "0ef3adb8-cdef-4424-a29d-40a6c5ef2863",
"time_to_bake_in_seconds": 3124,
"created_at": "2016-12-06T22:07:39.033Z",
"updated_at": "2016-12-06T22:07:39.033Z"
},
{
"id": 127,
"name": "Merveilleux",
"code": "a63d86a3-596d-40f8-90c6-a41f609c8a48",
"time_to_bake_in_seconds": 3033,
"created_at": "2016-12-06T22:07:39.038Z",
"updated_at": "2016-12-06T22:07:39.038Z"
},
{
"id": 128,
"name": "Mille-feuille",
"code": "c29e279a-1adc-4470-b894-20a3e5764491",
"time_to_bake_in_seconds": 3068,
"created_at": "2016-12-06T22:07:39.043Z",
"updated_at": "2016-12-06T22:07:39.043Z"
},
{
"id": 129,
"name": "Misérable cake",
"code": "c13067c6-1af5-4576-828f-40cf19759a91",
"time_to_bake_in_seconds": 2967,
"created_at": "2016-12-06T22:07:39.049Z",
"updated_at": "2016-12-06T22:07:39.049Z"
},
{
"id": 130,
"name": "Molten chocolate cake",
"code": "df7fd412-5400-455c-9384-03b09112d4f9",
"time_to_bake_in_seconds": 3141,
"created_at": "2016-12-06T22:07:39.054Z",
"updated_at": "2016-12-06T22:07:39.054Z"
},
{
"id": 131,
"name": "Mooncake",
"code": "6f6d3d59-4e01-4f9e-96b9-b31dc31c85ca",
"time_to_bake_in_seconds": 2868,
"created_at": "2016-12-06T22:07:39.058Z",
"updated_at": "2016-12-06T22:07:39.058Z"
},
{
"id": 132,
"name": "Muffin",
"code": "43528cfd-fca7-4292-b0bd-fb3e9a9fd14c",
"time_to_bake_in_seconds": 2904,
"created_at": "2016-12-06T22:07:39.062Z",
"updated_at": "2016-12-06T22:07:39.062Z"
},
{
"id": 133,
"name": "Napoleonshat",
"code": "0745ce1a-344b-49bc-932c-cb04245ed1a2",
"time_to_bake_in_seconds": 2949,
"created_at": "2016-12-06T22:07:39.066Z",
"updated_at": "2016-12-06T22:07:39.066Z"
},
{
"id": 134,
"name": "Napeleonskake",
"code": "e6518df2-ea05-445e-9b48-1ed0f3ce3e48",
"time_to_bake_in_seconds": 3045,
"created_at": "2016-12-06T22:07:39.070Z",
"updated_at": "2016-12-06T22:07:39.070Z"
},
{
"id": 135,
"name": "Nasturtium cake",
"code": "9d5f0cdc-2076-4fd6-b233-59f82ebd43a7",
"time_to_bake_in_seconds": 3266,
"created_at": "2016-12-06T22:07:39.074Z",
"updated_at": "2016-12-06T22:07:39.074Z"
},
{
"id": 136,
"name": "Onion cake",
"code": "46654d71-f76b-4ce7-acb1-5542c7df5ead",
"time_to_bake_in_seconds": 2979,
"created_at": "2016-12-06T22:07:39.078Z",
"updated_at": "2016-12-06T22:07:39.078Z"
},
{
"id": 137,
"name": "Oponki or Pączki",
"code": "a2ca460f-1686-4abd-928b-5bd4148bb0f1",
"time_to_bake_in_seconds": 3159,
"created_at": "2016-12-06T22:07:39.083Z",
"updated_at": "2016-12-06T22:07:39.083Z"
},
{
"id": 138,
"name": "Opera cake",
"code": "b094b381-3b44-48cb-9d07-198e0452981d",
"time_to_bake_in_seconds": 3267,
"created_at": "2016-12-06T22:07:39.088Z",
"updated_at": "2016-12-06T22:07:39.088Z"
},
{
"id": 139,
"name": "Orange and polenta cake",
"code": "93ed7995-064c-4b4f-83f8-cd01a3b0c644",
"time_to_bake_in_seconds": 2950,
"created_at": "2016-12-06T22:07:39.092Z",
"updated_at": "2016-12-06T22:07:39.092Z"
},
{
"id": 140,
"name": "Othellolagkage",
"code": "b5461494-55a6-41b6-bd3b-522f4f1e3a48",
"time_to_bake_in_seconds": 2770,
"created_at": "2016-12-06T22:07:39.097Z",
"updated_at": "2016-12-06T22:07:39.097Z"
},
{
"id": 141,
"name": "Pan di Spagna",
"code": "d62d4df9-f59c-46b9-bf42-5c791ad79307",
"time_to_bake_in_seconds": 3171,
"created_at": "2016-12-06T22:07:39.101Z",
"updated_at": "2016-12-06T22:07:39.101Z"
},
{
"id": 142,
"name": "Pancake",
"code": "c46bca04-3b41-4aa6-9e78-1d552da2cd54",
"time_to_bake_in_seconds": 3036,
"created_at": "2016-12-06T22:07:39.106Z",
"updated_at": "2016-12-06T22:07:39.106Z"
},
{
"id": 143,
"name": "Panpepato",
"code": "29381c24-f338-47e5-99a9-83e19e26229f",
"time_to_bake_in_seconds": 2776,
"created_at": "2016-12-06T22:07:39.110Z",
"updated_at": "2016-12-06T22:07:39.110Z"
},
{
"id": 144,
"name": "Panettone",
"code": "ebba001b-6afa-4ad6-908b-d9789a3b1ea6",
"time_to_bake_in_seconds": 3115,
"created_at": "2016-12-06T22:07:39.115Z",
"updated_at": "2016-12-06T22:07:39.115Z"
},
{
"id": 145,
"name": "Parkin",
"code": "86813a41-a0e1-471f-8801-4e3fa20d2cfa",
"time_to_bake_in_seconds": 3196,
"created_at": "2016-12-06T22:07:39.119Z",
"updated_at": "2016-12-06T22:07:39.119Z"
},
{
"id": 146,
"name": "Pavlova",
"code": "4290aa64-e025-43c1-bc93-7632f00ed09c",
"time_to_bake_in_seconds": 3223,
"created_at": "2016-12-06T22:07:39.125Z",
"updated_at": "2016-12-06T22:07:39.125Z"
},
{
"id": 147,
"name": "Petit Gâteau",
"code": "1bb4c01e-a983-4c12-99bf-eeed583daf1d",
"time_to_bake_in_seconds": 2969,
"created_at": "2016-12-06T22:07:39.130Z",
"updated_at": "2016-12-06T22:07:39.130Z"
},
{
"id": 148,
"name": "Petits fours",
"code": "e4f7f032-d95f-4c5f-824f-7dee80da0df2",
"time_to_bake_in_seconds": 3050,
"created_at": "2016-12-06T22:07:39.133Z",
"updated_at": "2016-12-06T22:07:39.133Z"
},
{
"id": 149,
"name": "Piernik",
"code": "ff88eac1-0755-428f-940f-076a8baed0c9",
"time_to_bake_in_seconds": 2858,
"created_at": "2016-12-06T22:07:39.138Z",
"updated_at": "2016-12-06T22:07:39.138Z"
},
{
"id": 150,
"name": "Plum cake",
"code": "c46fb52a-ad0d-4770-9042-1a01d2154082",
"time_to_bake_in_seconds": 2830,
"created_at": "2016-12-06T22:07:39.142Z",
"updated_at": "2016-12-06T22:07:39.142Z"
},
{
"id": 151,
"name": "Pound cake",
"code": "89c66583-f92d-44b7-b993-1a0d99077dd9",
"time_to_bake_in_seconds": 3114,
"created_at": "2016-12-06T22:07:39.148Z",
"updated_at": "2016-12-06T22:07:39.148Z"
},
{
"id": 152,
"name": "Princess cake",
"code": "557621c9-a19c-4d73-977e-73742bc34a52",
"time_to_bake_in_seconds": 2889,
"created_at": "2016-12-06T22:07:39.153Z",
"updated_at": "2016-12-06T22:07:39.153Z"
},
{
"id": 153,
"name": "Prinzregententorte",
"code": "9ae67fcc-b85b-49aa-a923-13f9ad366435",
"time_to_bake_in_seconds": 2712,
"created_at": "2016-12-06T22:07:39.158Z",
"updated_at": "2016-12-06T22:07:39.158Z"
},
{
"id": 154,
"name": "Pumpkin bread",
"code": "f382d064-2ff9-4f4b-99c8-9651b0d68ff0",
"time_to_bake_in_seconds": 2892,
"created_at": "2016-12-06T22:07:39.165Z",
"updated_at": "2016-12-06T22:07:39.165Z"
},
{
"id": 155,
"name": "Punschkrapfen",
"code": "6797d1ce-d47b-4dc9-a005-09f13fab1b52",
"time_to_bake_in_seconds": 2935,
"created_at": "2016-12-06T22:07:39.172Z",
"updated_at": "2016-12-06T22:07:39.172Z"
},
{
"id": 156,
"name": "Queen Elizabeth cake",
"code": "370eb094-ad91-4bfb-b4e2-8735529a48e2",
"time_to_bake_in_seconds": 2945,
"created_at": "2016-12-06T22:07:39.176Z",
"updated_at": "2016-12-06T22:07:39.176Z"
},
{
"id": 157,
"name": "Qumeshtore me pete",
"code": "d1c6d879-4724-43d0-8a35-cb6ae62994cd",
"time_to_bake_in_seconds": 2792,
"created_at": "2016-12-06T22:07:39.192Z",
"updated_at": "2016-12-06T22:07:39.192Z"
},
{
"id": 158,
"name": "Red bean cake",
"code": "f61e1372-28e3-4a13-a589-29d8f54f563d",
"time_to_bake_in_seconds": 3155,
"created_at": "2016-12-06T22:07:39.200Z",
"updated_at": "2016-12-06T22:07:39.200Z"
},
{
"id": 159,
"name": "Red velvet cake",
"code": "7e9e7bfe-90a8-42d3-ae1f-b3bc1fd48a9e",
"time_to_bake_in_seconds": 2952,
"created_at": "2016-12-06T22:07:39.207Z",
"updated_at": "2016-12-06T22:07:39.207Z"
},
{
"id": 160,
"name": "Rum cake",
"code": "80d86829-9f21-4ae6-8e49-f8196787ab01",
"time_to_bake_in_seconds": 3276,
"created_at": "2016-12-06T22:07:39.216Z",
"updated_at": "2016-12-06T22:07:39.216Z"
},
{
"id": 161,
"name": "Rum baba",
"code": "55687c7a-9d9f-41e0-a9f8-4ac5ab272113",
"time_to_bake_in_seconds": 3242,
"created_at": "2016-12-06T22:07:39.224Z",
"updated_at": "2016-12-06T22:07:39.224Z"
},
{
"id": 162,
"name": "Ruske kape",
"code": "ab9f5208-0d3c-4a8a-b54c-e1232c4d5179",
"time_to_bake_in_seconds": 2789,
"created_at": "2016-12-06T22:07:39.236Z",
"updated_at": "2016-12-06T22:07:39.236Z"
},
{
"id": 163,
"name": "Sachertorte",
"code": "aa2b1769-4f2a-46b0-947e-f556503ea4e0",
"time_to_bake_in_seconds": 2804,
"created_at": "2016-12-06T22:07:39.243Z",
"updated_at": "2016-12-06T22:07:39.243Z"
},
{
"id": 164,
"name": "Šakotis",
"code": "b3440314-206b-4caf-b026-8be3ebbe15b2",
"time_to_bake_in_seconds": 2740,
"created_at": "2016-12-06T22:07:39.247Z",
"updated_at": "2016-12-06T22:07:39.247Z"
},
{
"id": 165,
"name": "Salzburger Nockerl",
"code": "bf923ea0-3d2b-422b-b693-2c5904ae9fc1",
"time_to_bake_in_seconds": 3025,
"created_at": "2016-12-06T22:07:39.252Z",
"updated_at": "2016-12-06T22:07:39.252Z"
},
{
"id": 166,
"name": "Sekacz",
"code": "6c8faa48-4e0b-4361-bd48-bab122c3d777",
"time_to_bake_in_seconds": 2773,
"created_at": "2016-12-06T22:07:39.257Z",
"updated_at": "2016-12-06T22:07:39.257Z"
},
{
"id": 167,
"name": "Sernik",
"code": "c5532e3c-bb96-43de-af34-a3012018a57a",
"time_to_bake_in_seconds": 2805,
"created_at": "2016-12-06T22:07:39.263Z",
"updated_at": "2016-12-06T22:07:39.263Z"
},
{
"id": 168,
"name": "Sesame seed cake",
"code": "2ef9e792-a527-4e19-bd43-42900c8c4ea6",
"time_to_bake_in_seconds": 2774,
"created_at": "2016-12-06T22:07:39.267Z",
"updated_at": "2016-12-06T22:07:39.267Z"
},
{
"id": 169,
"name": "Sfouf",
"code": "404e83a3-0fda-467b-85b8-1551dc2b98b3",
"time_to_bake_in_seconds": 2819,
"created_at": "2016-12-06T22:07:39.272Z",
"updated_at": "2016-12-06T22:07:39.272Z"
},
{
"id": 170,
"name": "Simnel cake",
"code": "01a6f78f-8fe7-4ae7-bfe8-455e350bc33c",
"time_to_bake_in_seconds": 3287,
"created_at": "2016-12-06T22:07:39.282Z",
"updated_at": "2016-12-06T22:07:39.282Z"
},
{
"id": 171,
"name": "Smoked salmon cheesecake",
"code": "df0b434f-829e-492a-924e-3c5f0d555184",
"time_to_bake_in_seconds": 3194,
"created_at": "2016-12-06T22:07:39.287Z",
"updated_at": "2016-12-06T22:07:39.287Z"
},
{
"id": 172,
"name": "Smörgåstårta",
"code": "bd431899-9c62-45d4-8596-08b08c4ae107",
"time_to_bake_in_seconds": 2867,
"created_at": "2016-12-06T22:07:39.291Z",
"updated_at": "2016-12-06T22:07:39.291Z"
},
{
"id": 173,
"name": "Snowball cake",
"code": "7e6fb323-c400-4948-a55b-450bbdef1aa9",
"time_to_bake_in_seconds": 2857,
"created_at": "2016-12-06T22:07:39.295Z",
"updated_at": "2016-12-06T22:07:39.295Z"
},
{
"id": 174,
"name": "Snow skin mooncake",
"code": "275180f3-c8f4-442d-ab9e-696c64a320c2",
"time_to_bake_in_seconds": 2776,
"created_at": "2016-12-06T22:07:39.299Z",
"updated_at": "2016-12-06T22:07:39.299Z"
},
{
"id": 175,
"name": "Soufflé",
"code": "67216164-f2a7-4c07-94ec-262fe7dc4efa",
"time_to_bake_in_seconds": 2977,
"created_at": "2016-12-06T22:07:39.305Z",
"updated_at": "2016-12-06T22:07:39.305Z"
},
{
"id": 176,
"name": "Spekkoek",
"code": "2314030b-f15b-455f-84f2-7bde74715bb0",
"time_to_bake_in_seconds": 2943,
"created_at": "2016-12-06T22:07:39.310Z",
"updated_at": "2016-12-06T22:07:39.310Z"
},
{
"id": 177,
"name": "Spice cake",
"code": "16fc85ff-8d3b-48f0-b049-4f1c2140cae6",
"time_to_bake_in_seconds": 2711,
"created_at": "2016-12-06T22:07:39.314Z",
"updated_at": "2016-12-06T22:07:39.314Z"
},
{
"id": 178,
"name": "Spit cake",
"code": "40cef263-8603-487b-b84a-2dd9e87bd05e",
"time_to_bake_in_seconds": 2769,
"created_at": "2016-12-06T22:07:39.323Z",
"updated_at": "2016-12-06T22:07:39.323Z"
},
{
"id": 179,
"name": "Sponge cake",
"code": "66bde943-2204-45e6-8a6c-1bdea71bb911",
"time_to_bake_in_seconds": 2919,
"created_at": "2016-12-06T22:07:39.329Z",
"updated_at": "2016-12-06T22:07:39.329Z"
},
{
"id": 180,
"name": "St. Honoré cake",
"code": "725ad57a-c049-47fa-b0eb-c5de8985e758",
"time_to_bake_in_seconds": 3010,
"created_at": "2016-12-06T22:07:39.335Z",
"updated_at": "2016-12-06T22:07:39.335Z"
},
{
"id": 181,
"name": "Stack cake",
"code": "ccc034c7-ace8-4e2e-b16a-37c60332fc9c",
"time_to_bake_in_seconds": 2722,
"created_at": "2016-12-06T22:07:39.339Z",
"updated_at": "2016-12-06T22:07:39.339Z"
},
{
"id": 182,
"name": "Strawberry cake",
"code": "8b773adf-6897-45b0-a820-7896831c8c4f",
"time_to_bake_in_seconds": 3167,
"created_at": "2016-12-06T22:07:39.345Z",
"updated_at": "2016-12-06T22:07:39.345Z"
},
{
"id": 183,
"name": "Streuselkuchen",
"code": "dfb1f4c3-6500-4a82-9672-4bd5fad2a976",
"time_to_bake_in_seconds": 2847,
"created_at": "2016-12-06T22:07:39.350Z",
"updated_at": "2016-12-06T22:07:39.350Z"
},
{
"id": 184,
"name": "Studenterbrød",
"code": "6fcef36d-d829-4381-9e1d-6d6680975464",
"time_to_bake_in_seconds": 2804,
"created_at": "2016-12-06T22:07:39.354Z",
"updated_at": "2016-12-06T22:07:39.354Z"
},
{
"id": 185,
"name": "Sultana and cherry cake",
"code": "adec5f3d-f883-4065-9e2e-250c51526be3",
"time_to_bake_in_seconds": 3150,
"created_at": "2016-12-06T22:07:39.358Z",
"updated_at": "2016-12-06T22:07:39.358Z"
},
{
"id": 186,
"name": "Suncake",
"code": "2c0fd256-396e-4fbf-b692-000bf7308cd3",
"time_to_bake_in_seconds": 3033,
"created_at": "2016-12-06T22:07:39.364Z",
"updated_at": "2016-12-06T22:07:39.364Z"
},
{
"id": 187,
"name": "Swiss roll",
"code": "4a5229ef-c4b4-4cb8-80c7-1e122ba5783b",
"time_to_bake_in_seconds": 2808,
"created_at": "2016-12-06T22:07:39.368Z",
"updated_at": "2016-12-06T22:07:39.368Z"
},
{
"id": 188,
"name": "Tarte Tatin",
"code": "48a110b3-927d-4ffb-a47e-06f9159a5b8e",
"time_to_bake_in_seconds": 3251,
"created_at": "2016-12-06T22:07:39.373Z",
"updated_at": "2016-12-06T22:07:39.373Z"
},
{
"id": 189,
"name": "Tea loaf",
"code": "d7f42914-5283-4789-b919-3a289b2580d1",
"time_to_bake_in_seconds": 3105,
"created_at": "2016-12-06T22:07:39.378Z",
"updated_at": "2016-12-06T22:07:39.378Z"
},
{
"id": 190,
"name": "Teacake",
"code": "882bfe3b-d9a7-4b23-88a4-c7ef140ba14b",
"time_to_bake_in_seconds": 2852,
"created_at": "2016-12-06T22:07:39.382Z",
"updated_at": "2016-12-06T22:07:39.382Z"
},
{
"id": 191,
"name": "Tiramisu",
"code": "6413962f-6d48-41a8-bc0c-2e512fc153f9",
"time_to_bake_in_seconds": 2727,
"created_at": "2016-12-06T22:07:39.386Z",
"updated_at": "2016-12-06T22:07:39.386Z"
},
{
"id": 192,
"name": "Tompouce",
"code": "04e0d810-0834-4e24-ba05-ca0a5d7b3929",
"time_to_bake_in_seconds": 3141,
"created_at": "2016-12-06T22:07:39.391Z",
"updated_at": "2016-12-06T22:07:39.391Z"
},
{
"id": 193,
"name": "Torta Tre Monti",
"code": "abbe2e7a-cf7d-447b-b5c1-130a21f710e5",
"time_to_bake_in_seconds": 3172,
"created_at": "2016-12-06T22:07:39.396Z",
"updated_at": "2016-12-06T22:07:39.396Z"
},
{
"id": 194,
"name": "Tres leches cake",
"code": "3d297cb2-3db6-489b-86d9-422f8195587a",
"time_to_bake_in_seconds": 3242,
"created_at": "2016-12-06T22:07:39.401Z",
"updated_at": "2016-12-06T22:07:39.401Z"
},
{
"id": 195,
"name": "Tunis cake",
"code": "f616c14e-cf41-4b7c-b456-2ffba537e33f",
"time_to_bake_in_seconds": 2791,
"created_at": "2016-12-06T22:07:39.406Z",
"updated_at": "2016-12-06T22:07:39.406Z"
},
{
"id": 196,
"name": "Træstammer",
"code": "7857c252-1421-4cfa-96b8-fb3091ff8b15",
"time_to_bake_in_seconds": 3131,
"created_at": "2016-12-06T22:07:39.411Z",
"updated_at": "2016-12-06T22:07:39.411Z"
},
{
"id": 197,
"name": "Upside-down cake",
"code": "1bea3203-f095-4862-b66c-55bc3d157286",
"time_to_bake_in_seconds": 3238,
"created_at": "2016-12-06T22:07:39.416Z",
"updated_at": "2016-12-06T22:07:39.416Z"
},
{
"id": 198,
"name": "Victoria sponge cake",
"code": "0b15c42d-4220-4ec4-8d82-e6a3cd016ced",
"time_to_bake_in_seconds": 3086,
"created_at": "2016-12-06T22:07:39.427Z",
"updated_at": "2016-12-06T22:07:39.427Z"
},
{
"id": 199,
"name": "Vínarterta",
"code": "2050489d-7bca-4972-af0d-98675f090043",
"time_to_bake_in_seconds": 3188,
"created_at": "2016-12-06T22:07:39.433Z",
"updated_at": "2016-12-06T22:07:39.433Z"
},
{
"id": 200,
"name": "Wedding cake",
"code": "36849289-ec3b-4f9c-8d9b-1d3ee112cd04",
"time_to_bake_in_seconds": 3221,
"created_at": "2016-12-06T22:07:39.437Z",
"updated_at": "2016-12-06T22:07:39.437Z"
},
{
"id": 201,
"name": "Welsh cake",
"code": "5352280b-c698-4d57-bf95-3c4563e2d96d",
"time_to_bake_in_seconds": 3072,
"created_at": "2016-12-06T22:07:39.442Z",
"updated_at": "2016-12-06T22:07:39.442Z"
},
{
"id": 202,
"name": "Whoopie pies",
"code": "d909f3fd-ce70-46ef-bc0c-2a739d5c015d",
"time_to_bake_in_seconds": 3279,
"created_at": "2016-12-06T22:07:39.446Z",
"updated_at": "2016-12-06T22:07:39.446Z"
},
{
"id": 203,
"name": "Wine cake",
"code": "f3071aa9-ec38-491b-9e3c-83d45b50f7cf",
"time_to_bake_in_seconds": 2970,
"created_at": "2016-12-06T22:07:39.450Z",
"updated_at": "2016-12-06T22:07:39.450Z"
}
]

products.each do |product|
  Product.create(
    api_id: product[:code],
    name: product[:name],
    time_to_bake_in_seconds: product[:time_to_bake_in_seconds]
  )
end
