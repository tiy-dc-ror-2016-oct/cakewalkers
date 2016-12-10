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
"id": 610,
"name": "Adobe bread",
"code": "c3b40b4c-fc83-496c-8a6d-df4e1a702d10",
"time_to_bake_in_seconds": 1988,
"created_at": "2016-12-09T21:05:49.502Z",
"updated_at": "2016-12-09T21:05:49.502Z"
},
{
"id": 611,
"name": "Amish friendship bread",
"code": "98132c15-7550-4abf-ab80-293a24e4050f",
"time_to_bake_in_seconds": 2063,
"created_at": "2016-12-09T21:05:49.515Z",
"updated_at": "2016-12-09T21:05:49.515Z"
},
{
"id": 612,
"name": "Anadama bread",
"code": "9247f7c6-cc47-4baa-8ea0-5823f75e5cab",
"time_to_bake_in_seconds": 1923,
"created_at": "2016-12-09T21:05:49.521Z",
"updated_at": "2016-12-09T21:05:49.521Z"
},
{
"id": 613,
"name": "Banana bread",
"code": "fec1b69b-55f0-4eef-83e8-a0077079da25",
"time_to_bake_in_seconds": 1627,
"created_at": "2016-12-09T21:05:49.526Z",
"updated_at": "2016-12-09T21:05:49.526Z"
},
{
"id": 614,
"name": "Beaten biscuit",
"code": "9ec6f4a9-7265-46bf-b287-905d4c2a3f16",
"time_to_bake_in_seconds": 1595,
"created_at": "2016-12-09T21:05:49.530Z",
"updated_at": "2016-12-09T21:05:49.530Z"
},
{
"id": 615,
"name": "Biscuit",
"code": "c99f48a4-5e10-408b-b41b-6c51afe08b39",
"time_to_bake_in_seconds": 1767,
"created_at": "2016-12-09T21:05:49.534Z",
"updated_at": "2016-12-09T21:05:49.534Z"
},
{
"id": 616,
"name": "Brown bread",
"code": "3b5cdd8f-c2a9-4a19-8187-ba9d439b7b39",
"time_to_bake_in_seconds": 1052,
"created_at": "2016-12-09T21:05:49.539Z",
"updated_at": "2016-12-09T21:05:49.539Z"
},
{
"id": 617,
"name": "Bulkie roll",
"code": "a80f4e71-4e01-4c27-8347-0750ddd8938f",
"time_to_bake_in_seconds": 1645,
"created_at": "2016-12-09T21:05:49.544Z",
"updated_at": "2016-12-09T21:05:49.544Z"
},
{
"id": 618,
"name": "Cornbread",
"code": "87a13c73-1586-46de-bf3b-fc0b8d4d6a9d",
"time_to_bake_in_seconds": 1571,
"created_at": "2016-12-09T21:05:49.548Z",
"updated_at": "2016-12-09T21:05:49.548Z"
},
{
"id": 619,
"name": "Cuban bread",
"code": "03525b8b-d7e4-4848-a599-d77d8cdf6f41",
"time_to_bake_in_seconds": 1892,
"created_at": "2016-12-09T21:05:49.552Z",
"updated_at": "2016-12-09T21:05:49.552Z"
},
{
"id": 620,
"name": "Frybread",
"code": "177a95e6-56c9-4db6-a720-10d5c30ea572",
"time_to_bake_in_seconds": 1542,
"created_at": "2016-12-09T21:05:49.556Z",
"updated_at": "2016-12-09T21:05:49.556Z"
},
{
"id": 621,
"name": "Graham bread",
"code": "fe39b9d3-761b-4a98-a274-8e6f1c07fc37",
"time_to_bake_in_seconds": 1820,
"created_at": "2016-12-09T21:05:49.563Z",
"updated_at": "2016-12-09T21:05:49.563Z"
},
{
"id": 622,
"name": "Hot water corn bread",
"code": "1ce19ce0-76a5-48a5-8a69-f29d1cfc7a3d",
"time_to_bake_in_seconds": 1612,
"created_at": "2016-12-09T21:05:49.569Z",
"updated_at": "2016-12-09T21:05:49.569Z"
},
{
"id": 623,
"name": "Hushpuppy",
"code": "22020a7d-9c82-48d3-ac19-2c9a86d96044",
"time_to_bake_in_seconds": 1923,
"created_at": "2016-12-09T21:05:49.574Z",
"updated_at": "2016-12-09T21:05:49.574Z"
},
{
"id": 624,
"name": "Muffin",
"code": "44618925-905f-4d23-8822-8af5ae2220f4",
"time_to_bake_in_seconds": 1292,
"created_at": "2016-12-09T21:05:49.579Z",
"updated_at": "2016-12-09T21:05:49.579Z"
},
{
"id": 625,
"name": "Muffuletta",
"code": "68fbdd4c-2e61-4e92-9052-9a3912d08e10",
"time_to_bake_in_seconds": 1627,
"created_at": "2016-12-09T21:05:49.584Z",
"updated_at": "2016-12-09T21:05:49.584Z"
},
{
"id": 626,
"name": "Parker House roll",
"code": "6bef02de-93af-4383-9910-79e596d1da79",
"time_to_bake_in_seconds": 1543,
"created_at": "2016-12-09T21:05:49.588Z",
"updated_at": "2016-12-09T21:05:49.588Z"
},
{
"id": 627,
"name": "Pepperoni roll",
"code": "34319843-f369-4c30-9d9c-003e104de99e",
"time_to_bake_in_seconds": 1514,
"created_at": "2016-12-09T21:05:49.592Z",
"updated_at": "2016-12-09T21:05:49.592Z"
},
{
"id": 628,
"name": "Popover",
"code": "ddd7df13-2a3a-4432-8228-89bc95741f12",
"time_to_bake_in_seconds": 2003,
"created_at": "2016-12-09T21:05:49.596Z",
"updated_at": "2016-12-09T21:05:49.596Z"
},
{
"id": 629,
"name": "Pullman loaf",
"code": "28e9c3fb-176d-44cf-87ea-7e54a53baf27",
"time_to_bake_in_seconds": 1839,
"unit_price_in_cents": 800,
"for_sale": true,
"created_at": "2016-12-09T21:05:49.600Z",
"updated_at": "2016-12-09T21:05:49.600Z",
"image_url": "PullmanLoaf.jpg"
},
{
"id": 630,
"name": "Salt-rising bread",
"code": "05499a69-21dd-4e71-aa8d-302ae1db844e",
"time_to_bake_in_seconds": 1735,
"created_at": "2016-12-09T21:05:49.604Z",
"updated_at": "2016-12-09T21:05:49.604Z"
},
{
"id": 631,
"name": "Scali bread",
"code": "3696d67b-c866-4e00-9ec5-afaea75d4e3e",
"time_to_bake_in_seconds": 1946,
"created_at": "2016-12-09T21:05:49.608Z",
"updated_at": "2016-12-09T21:05:49.608Z"
},
{
"id": 632,
"name": "Sloosh",
"code": "14777c13-24e1-4247-8033-0d968e574701",
"time_to_bake_in_seconds": 1965,
"created_at": "2016-12-09T21:05:49.613Z",
"updated_at": "2016-12-09T21:05:49.613Z"
},
{
"id": 633,
"name": "Texas toast",
"code": "51dd8cd5-b56b-4814-baf5-7c8405517fbd",
"time_to_bake_in_seconds": 1470,
"created_at": "2016-12-09T21:05:49.617Z",
"updated_at": "2016-12-09T21:05:49.617Z"
},
{
"id": 634,
"name": "Angel food cake",
"code": "8274e1f4-2f5c-4d55-bb6a-106baab29d46",
"time_to_bake_in_seconds": 2821,
"created_at": "2016-12-09T21:05:49.622Z",
"updated_at": "2016-12-09T21:05:49.622Z"
},
{
"id": 635,
"name": "Apple cake",
"code": "95b3281a-e2c2-4b01-90af-97198c822326",
"time_to_bake_in_seconds": 2797,
"created_at": "2016-12-09T21:05:49.626Z",
"updated_at": "2016-12-09T21:05:49.626Z"
},
{
"id": 636,
"name": "Applesauce cake",
"code": "c5380535-f75a-439b-b892-726b4a75a515",
"time_to_bake_in_seconds": 2734,
"created_at": "2016-12-09T21:05:49.630Z",
"updated_at": "2016-12-09T21:05:49.630Z"
},
{
"id": 637,
"name": "Aranygaluska",
"code": "2937896f-80bc-4993-97e0-8ca826875a27",
"time_to_bake_in_seconds": 2757,
"created_at": "2016-12-09T21:05:49.634Z",
"updated_at": "2016-12-09T21:05:49.634Z"
},
{
"id": 638,
"name": "Avocado cake",
"code": "f3e0ba28-f14d-4fd5-a014-41146c1e94f3",
"time_to_bake_in_seconds": 3269,
"unit_price_in_cents": 3800,
"for_sale": true,
"created_at": "2016-12-09T21:05:49.639Z",
"updated_at": "2016-12-09T21:05:49.639Z",
"image_url": "AvacodoCake.jpg"
},
{
"id": 639,
"name": "Babka",
"code": "d6f9a297-6f3f-4b9d-9358-d80ac49c8f61",
"time_to_bake_in_seconds": 3159,
"created_at": "2016-12-09T21:05:49.643Z",
"updated_at": "2016-12-09T21:05:49.643Z"
},
{
"id": 640,
"name": "Ballokume",
"code": "f76ef25e-8461-4722-b70e-a0545c428f6b",
"time_to_bake_in_seconds": 3132,
"created_at": "2016-12-09T21:05:49.647Z",
"updated_at": "2016-12-09T21:05:49.647Z"
},
{
"id": 641,
"name": "Banana cake",
"code": "c73e45ba-22aa-4374-8d17-c6cb94b3522a",
"time_to_bake_in_seconds": 3236,
"created_at": "2016-12-09T21:05:49.651Z",
"updated_at": "2016-12-09T21:05:49.651Z"
},
{
"id": 642,
"name": "Basbousa",
"code": "c2750518-3ca5-49f7-ab8c-4a68ebc8fae4",
"time_to_bake_in_seconds": 2980,
"created_at": "2016-12-09T21:05:49.656Z",
"updated_at": "2016-12-09T21:05:49.656Z"
},
{
"id": 643,
"name": "Beer cake",
"code": "ab63c3af-2bb3-47ef-9be0-ec064a08823f",
"time_to_bake_in_seconds": 2834,
"created_at": "2016-12-09T21:05:49.662Z",
"updated_at": "2016-12-09T21:05:49.662Z"
},
{
"id": 644,
"name": "Better than sex cake",
"code": "4ecb48ca-c964-4d83-b458-ae1e7896a1d0",
"time_to_bake_in_seconds": 3116,
"created_at": "2016-12-09T21:05:49.667Z",
"updated_at": "2016-12-09T21:05:49.667Z"
},
{
"id": 645,
"name": "Boston cream pie",
"code": "9930150a-4b3e-40fc-89cb-3c7ad64a4e68",
"time_to_bake_in_seconds": 3256,
"created_at": "2016-12-09T21:05:49.671Z",
"updated_at": "2016-12-09T21:05:49.671Z"
},
{
"id": 646,
"name": "Banana cake/bread",
"code": "98fe0aa8-9631-4415-878c-c6ea28cb4d1f",
"time_to_bake_in_seconds": 3292,
"created_at": "2016-12-09T21:05:49.676Z",
"updated_at": "2016-12-09T21:05:49.676Z"
},
{
"id": 647,
"name": "Banoffee pie",
"code": "19e7626b-142d-45d7-821d-8aab04fa79c8",
"time_to_bake_in_seconds": 3243,
"created_at": "2016-12-09T21:05:49.680Z",
"updated_at": "2016-12-09T21:05:49.680Z"
},
{
"id": 648,
"name": "Bara brith",
"code": "04286a73-83aa-4a6c-b0f5-e0b326a3d8b5",
"time_to_bake_in_seconds": 3005,
"created_at": "2016-12-09T21:05:49.684Z",
"updated_at": "2016-12-09T21:05:49.684Z"
},
{
"id": 649,
"name": "Battenberg cake",
"code": "f0e4fb38-758c-41b2-ad9b-d9e2ecb07ea8",
"time_to_bake_in_seconds": 3195,
"created_at": "2016-12-09T21:05:49.688Z",
"updated_at": "2016-12-09T21:05:49.688Z"
},
{
"id": 650,
"name": "Baumkuchen",
"code": "3f447854-9bee-43c8-81af-e48fd25d4328",
"time_to_bake_in_seconds": 2875,
"created_at": "2016-12-09T21:05:49.693Z",
"updated_at": "2016-12-09T21:05:49.693Z"
},
{
"id": 651,
"name": "Bibingka",
"code": "d7d466d3-0dae-40bf-b086-b30435608910",
"time_to_bake_in_seconds": 3146,
"created_at": "2016-12-09T21:05:49.697Z",
"updated_at": "2016-12-09T21:05:49.697Z"
},
{
"id": 652,
"name": "Bienenstich Bee Sting",
"code": "0cb8131b-e6f2-4d89-8d07-ef57346c7c99",
"time_to_bake_in_seconds": 3088,
"created_at": "2016-12-09T21:05:49.701Z",
"updated_at": "2016-12-09T21:05:49.701Z"
},
{
"id": 653,
"name": "Birthday cake",
"code": "1d88e015-5b1c-4ebc-9153-9163c8390751",
"time_to_bake_in_seconds": 3094,
"created_at": "2016-12-09T21:05:49.706Z",
"updated_at": "2016-12-09T21:05:49.706Z"
},
{
"id": 654,
"name": "Bizcocho Dominicano",
"code": "5c84e255-d66f-47d8-b444-d51b4eecd4c2",
"time_to_bake_in_seconds": 2914,
"created_at": "2016-12-09T21:05:49.712Z",
"updated_at": "2016-12-09T21:05:49.712Z"
},
{
"id": 655,
"name": "Black Forest cake",
"code": "4f62b1b6-ae2a-4194-aaf0-86b2dcac40cd",
"time_to_bake_in_seconds": 3265,
"created_at": "2016-12-09T21:05:49.717Z",
"updated_at": "2016-12-09T21:05:49.717Z"
},
{
"id": 656,
"name": "Blitztorte",
"code": "0714ab72-f34c-46e3-b33b-82b94ed15d42",
"time_to_bake_in_seconds": 2844,
"created_at": "2016-12-09T21:05:49.722Z",
"updated_at": "2016-12-09T21:05:49.722Z"
},
{
"id": 657,
"name": "Blondie",
"code": "fe2d0233-8c22-45a2-91fb-007226104bea",
"time_to_bake_in_seconds": 3110,
"created_at": "2016-12-09T21:05:49.726Z",
"updated_at": "2016-12-09T21:05:49.726Z"
},
{
"id": 658,
"name": "Bolo de mel",
"code": "afb433dc-ae68-4bff-9e8e-0395d0e73812",
"time_to_bake_in_seconds": 3105,
"created_at": "2016-12-09T21:05:49.730Z",
"updated_at": "2016-12-09T21:05:49.730Z"
},
{
"id": 659,
"name": "Brazil nut cake",
"code": "ca94361e-8315-4849-a2ee-27ada7b3c054",
"time_to_bake_in_seconds": 2713,
"created_at": "2016-12-09T21:05:49.734Z",
"updated_at": "2016-12-09T21:05:49.734Z"
},
{
"id": 660,
"name": "Brownie",
"code": "f98a8608-b820-49af-a659-c5eda3009d38",
"time_to_bake_in_seconds": 2845,
"created_at": "2016-12-09T21:05:49.738Z",
"updated_at": "2016-12-09T21:05:49.738Z"
},
{
"id": 661,
"name": "Buccellato",
"code": "e86bd44f-aa77-48bd-8594-d40d643726d0",
"time_to_bake_in_seconds": 2861,
"created_at": "2016-12-09T21:05:49.742Z",
"updated_at": "2016-12-09T21:05:49.742Z"
},
{
"id": 662,
"name": "Budapestlängd",
"code": "aad8f0fc-fd65-4ed9-996b-dea94313c40b",
"time_to_bake_in_seconds": 2907,
"created_at": "2016-12-09T21:05:49.747Z",
"updated_at": "2016-12-09T21:05:49.747Z"
},
{
"id": 663,
"name": "Bundt cake",
"code": "31674e30-10d7-4a10-88b6-98502421af1c",
"time_to_bake_in_seconds": 2711,
"created_at": "2016-12-09T21:05:49.752Z",
"updated_at": "2016-12-09T21:05:49.752Z"
},
{
"id": 664,
"name": "Butter cake",
"code": "1ac358e8-37b8-4cc3-905f-a259c00b353d",
"time_to_bake_in_seconds": 3195,
"created_at": "2016-12-09T21:05:49.756Z",
"updated_at": "2016-12-09T21:05:49.756Z"
},
{
"id": 665,
"name": "Butterfly cake",
"code": "c1a06c88-447b-48ca-b5e1-0e24cda05898",
"time_to_bake_in_seconds": 2904,
"created_at": "2016-12-09T21:05:49.760Z",
"updated_at": "2016-12-09T21:05:49.760Z"
},
{
"id": 666,
"name": "Cassata",
"code": "ccf50aac-d6bb-426f-8801-8817a9b3394f",
"time_to_bake_in_seconds": 2820,
"created_at": "2016-12-09T21:05:49.765Z",
"updated_at": "2016-12-09T21:05:49.765Z"
},
{
"id": 667,
"name": "Carrot cake",
"code": "16f5bab2-ac3d-4a4c-9e3e-928d8ae95e90",
"time_to_bake_in_seconds": 2834,
"created_at": "2016-12-09T21:05:49.769Z",
"updated_at": "2016-12-09T21:05:49.769Z"
},
{
"id": 668,
"name": "Cheesecake",
"code": "24bd07e8-da45-4302-ab6d-b379a60e3aea",
"time_to_bake_in_seconds": 3135,
"created_at": "2016-12-09T21:05:49.773Z",
"updated_at": "2016-12-09T21:05:49.773Z"
},
{
"id": 669,
"name": "Chestnut cake",
"code": "8713f223-13ab-41c7-b68b-345d925563fc",
"time_to_bake_in_seconds": 3240,
"created_at": "2016-12-09T21:05:49.777Z",
"updated_at": "2016-12-09T21:05:49.777Z"
},
{
"id": 670,
"name": "Chiffon cake",
"code": "901ca084-04ba-46a0-892a-c9e61ef217b3",
"time_to_bake_in_seconds": 2988,
"created_at": "2016-12-09T21:05:49.782Z",
"updated_at": "2016-12-09T21:05:49.782Z"
},
{
"id": 671,
"name": "Chocolate cake",
"code": "312e878b-7ae2-4c7d-b4fc-85bb12f97bdb",
"time_to_bake_in_seconds": 2910,
"created_at": "2016-12-09T21:05:49.786Z",
"updated_at": "2016-12-09T21:05:49.786Z"
},
{
"id": 672,
"name": "Christmas cake",
"code": "0ca8d0da-886d-4c85-b35e-f84c50d0efe7",
"time_to_bake_in_seconds": 3044,
"created_at": "2016-12-09T21:05:49.789Z",
"updated_at": "2016-12-09T21:05:49.789Z"
},
{
"id": 673,
"name": "Clementine cake",
"code": "2fbfc634-cb42-4062-b53d-fd28e1bb29bd",
"time_to_bake_in_seconds": 3257,
"created_at": "2016-12-09T21:05:49.793Z",
"updated_at": "2016-12-09T21:05:49.793Z"
},
{
"id": 674,
"name": "Coconut cake",
"code": "f3dfc7b1-4a7a-4913-bae4-7828a5e242ab",
"time_to_bake_in_seconds": 2840,
"created_at": "2016-12-09T21:05:49.798Z",
"updated_at": "2016-12-09T21:05:49.798Z"
},
{
"id": 675,
"name": "Coffee cake",
"code": "4c5bf6be-3837-4dbd-aa34-980cd6ea0b70",
"time_to_bake_in_seconds": 3129,
"created_at": "2016-12-09T21:05:49.802Z",
"updated_at": "2016-12-09T21:05:49.802Z"
},
{
"id": 676,
"name": "Cremeschnitte",
"code": "6a44eaab-39e4-4df5-b81a-c0d76002cced",
"time_to_bake_in_seconds": 3009,
"created_at": "2016-12-09T21:05:49.807Z",
"updated_at": "2016-12-09T21:05:49.807Z"
},
{
"id": 677,
"name": "Croquembouche",
"code": "007000b4-24af-4f5d-a3d7-a34cbb6750de",
"time_to_bake_in_seconds": 3120,
"created_at": "2016-12-09T21:05:49.811Z",
"updated_at": "2016-12-09T21:05:49.811Z"
},
{
"id": 678,
"name": "Crystal cake",
"code": "0f5a7475-3f85-4619-ba21-78a03cdbb772",
"time_to_bake_in_seconds": 3183,
"created_at": "2016-12-09T21:05:49.816Z",
"updated_at": "2016-12-09T21:05:49.816Z"
},
{
"id": 679,
"name": "Cuatro leches cake",
"code": "0d788d5b-409a-4e7d-aaff-835caa6f5903",
"time_to_bake_in_seconds": 3205,
"created_at": "2016-12-09T21:05:49.820Z",
"updated_at": "2016-12-09T21:05:49.820Z"
},
{
"id": 680,
"name": "Cucumber cake",
"code": "8e3e9461-7079-4453-8e3d-5da46f2a0727",
"time_to_bake_in_seconds": 2931,
"created_at": "2016-12-09T21:05:49.825Z",
"updated_at": "2016-12-09T21:05:49.825Z"
},
{
"id": 681,
"name": "Cupcake",
"code": "f5896876-028a-4ad0-970f-55e5e820c3ad",
"time_to_bake_in_seconds": 3159,
"created_at": "2016-12-09T21:05:49.829Z",
"updated_at": "2016-12-09T21:05:49.829Z"
},
{
"id": 682,
"name": "Dacquoise",
"code": "9b0ae051-2b69-4ecf-af8a-878c6f97977d",
"time_to_bake_in_seconds": 2851,
"created_at": "2016-12-09T21:05:49.834Z",
"updated_at": "2016-12-09T21:05:49.834Z"
},
{
"id": 683,
"name": "Date and walnut loaf",
"code": "c9406167-6207-4562-9174-c4bb79d72c18",
"time_to_bake_in_seconds": 3109,
"created_at": "2016-12-09T21:05:49.838Z",
"updated_at": "2016-12-09T21:05:49.838Z"
},
{
"id": 684,
"name": "Date square",
"code": "304f2be0-d2d7-4950-bf6b-31a2c144f3b9",
"time_to_bake_in_seconds": 2963,
"created_at": "2016-12-09T21:05:49.842Z",
"updated_at": "2016-12-09T21:05:49.842Z"
},
{
"id": 685,
"name": "Depression cake",
"code": "08a8c411-e9e0-4f4a-b6f7-7be9355dbd82",
"time_to_bake_in_seconds": 2792,
"created_at": "2016-12-09T21:05:49.847Z",
"updated_at": "2016-12-09T21:05:49.847Z"
},
{
"id": 686,
"name": "Devil's food cake",
"code": "4c606186-585a-4f53-adcd-7558d293f327",
"time_to_bake_in_seconds": 3279,
"created_at": "2016-12-09T21:05:49.851Z",
"updated_at": "2016-12-09T21:05:49.851Z"
},
{
"id": 687,
"name": "Dobos cake",
"code": "7f86302e-f46b-48e7-bdd0-a06082960627",
"time_to_bake_in_seconds": 3275,
"created_at": "2016-12-09T21:05:49.855Z",
"updated_at": "2016-12-09T21:05:49.855Z"
},
{
"id": 688,
"name": "Dundee cake",
"code": "843a8473-ea70-460c-9226-85e4ea1e6159",
"time_to_bake_in_seconds": 2861,
"created_at": "2016-12-09T21:05:49.860Z",
"updated_at": "2016-12-09T21:05:49.860Z"
},
{
"id": 689,
"name": "Eccles cake",
"code": "d9466709-4e17-4a90-a081-fadff2ff1236",
"time_to_bake_in_seconds": 3055,
"created_at": "2016-12-09T21:05:49.864Z",
"updated_at": "2016-12-09T21:05:49.864Z"
},
{
"id": 690,
"name": "Esterházy torte",
"code": "6d8f22ba-0ec4-4122-abe7-5e300d2e0d39",
"time_to_bake_in_seconds": 3092,
"created_at": "2016-12-09T21:05:49.869Z",
"updated_at": "2016-12-09T21:05:49.869Z"
},
{
"id": 691,
"name": "Fat rascal",
"code": "c11da431-08ca-441f-88ff-bd8624657771",
"time_to_bake_in_seconds": 3188,
"created_at": "2016-12-09T21:05:49.873Z",
"updated_at": "2016-12-09T21:05:49.873Z"
},
{
"id": 692,
"name": "Faworki",
"code": "2b6c4d65-8153-4efc-8f29-53faefc3bb05",
"time_to_bake_in_seconds": 3213,
"created_at": "2016-12-09T21:05:49.877Z",
"updated_at": "2016-12-09T21:05:49.877Z"
},
{
"id": 693,
"name": "Fig cake",
"code": "d6c32dbc-c724-4b98-94f9-bbe910ac3b1f",
"time_to_bake_in_seconds": 3190,
"created_at": "2016-12-09T21:05:49.882Z",
"updated_at": "2016-12-09T21:05:49.882Z"
},
{
"id": 694,
"name": "Financier",
"code": "46c4f591-7c15-45af-b485-64e0d7c97461",
"time_to_bake_in_seconds": 3100,
"created_at": "2016-12-09T21:05:49.886Z",
"updated_at": "2016-12-09T21:05:49.886Z"
},
{
"id": 695,
"name": "Flourless chocolate cake",
"code": "352caed3-2e16-4a78-9946-9b967effede5",
"time_to_bake_in_seconds": 2889,
"created_at": "2016-12-09T21:05:49.891Z",
"updated_at": "2016-12-09T21:05:49.891Z"
},
{
"id": 696,
"name": "Fondant Fancy",
"code": "13c74d6f-bd31-45d8-89bb-efcdc6412061",
"time_to_bake_in_seconds": 2839,
"created_at": "2016-12-09T21:05:49.895Z",
"updated_at": "2016-12-09T21:05:49.895Z"
},
{
"id": 697,
"name": "Fragelité",
"code": "c4d7d640-59aa-4b55-adfa-4a3051ca4ded",
"time_to_bake_in_seconds": 2782,
"created_at": "2016-12-09T21:05:49.899Z",
"updated_at": "2016-12-09T21:05:49.899Z"
},
{
"id": 698,
"name": "Frog cake",
"code": "f9762cc5-eb50-4fdc-a520-76e88ef26a2a",
"time_to_bake_in_seconds": 2871,
"created_at": "2016-12-09T21:05:49.903Z",
"updated_at": "2016-12-09T21:05:49.903Z"
},
{
"id": 699,
"name": "Fruitcake",
"code": "63e93589-5f9e-4141-af83-57bd6bd92500",
"time_to_bake_in_seconds": 2964,
"created_at": "2016-12-09T21:05:49.908Z",
"updated_at": "2016-12-09T21:05:49.908Z"
},
{
"id": 700,
"name": "Fountain cake",
"code": "4ee1f78c-1a8b-440a-aff6-eccf5da4cd67",
"time_to_bake_in_seconds": 2740,
"created_at": "2016-12-09T21:05:49.912Z",
"updated_at": "2016-12-09T21:05:49.912Z"
},
{
"id": 701,
"name": "Funing big cake",
"code": "d6308657-54ee-4a3a-8d7f-44e9126e5464",
"time_to_bake_in_seconds": 2733,
"created_at": "2016-12-09T21:05:49.916Z",
"updated_at": "2016-12-09T21:05:49.916Z"
},
{
"id": 702,
"name": "Genoa cake",
"code": "6631d7e8-f471-4f00-ba1c-88e19ead7efa",
"time_to_bake_in_seconds": 3231,
"created_at": "2016-12-09T21:05:49.921Z",
"updated_at": "2016-12-09T21:05:49.921Z"
},
{
"id": 703,
"name": "Genoise Genoese cake",
"code": "793873d3-194f-4087-a208-6d6c8e0507d8",
"time_to_bake_in_seconds": 3037,
"created_at": "2016-12-09T21:05:49.925Z",
"updated_at": "2016-12-09T21:05:49.925Z"
},
{
"id": 704,
"name": "German Chocolate Cake",
"code": "d528c691-a512-4280-af65-1a0325696d01",
"time_to_bake_in_seconds": 3038,
"created_at": "2016-12-09T21:05:49.929Z",
"updated_at": "2016-12-09T21:05:49.929Z"
},
{
"id": 705,
"name": "Gingerbread",
"code": "355b89c5-bf22-439a-b9c1-1c9df32ff542",
"time_to_bake_in_seconds": 3288,
"created_at": "2016-12-09T21:05:49.934Z",
"updated_at": "2016-12-09T21:05:49.934Z"
},
{
"id": 706,
"name": "Goose Breast",
"code": "982ce344-aea4-46ed-9ddc-bdcd29b93ad9",
"time_to_bake_in_seconds": 2859,
"created_at": "2016-12-09T21:05:49.938Z",
"updated_at": "2016-12-09T21:05:49.938Z"
},
{
"id": 707,
"name": "Halloween cake",
"code": "0ae18b54-469f-47b2-952f-d660532bd699",
"time_to_bake_in_seconds": 3183,
"created_at": "2016-12-09T21:05:49.942Z",
"updated_at": "2016-12-09T21:05:49.942Z"
},
{
"id": 708,
"name": "Hash brownies",
"code": "beef402f-9cfd-4389-9866-6e78fbb9517c",
"time_to_bake_in_seconds": 3158,
"created_at": "2016-12-09T21:05:49.946Z",
"updated_at": "2016-12-09T21:05:49.946Z"
},
{
"id": 709,
"name": "Hot milk cake",
"code": "01825754-2584-4e85-b293-ce493c723f1f",
"time_to_bake_in_seconds": 2885,
"created_at": "2016-12-09T21:05:49.950Z",
"updated_at": "2016-12-09T21:05:49.950Z"
},
{
"id": 710,
"name": "Ice cream cake",
"code": "982ce127-6b58-457f-a16e-188620d9fc7e",
"time_to_bake_in_seconds": 3169,
"created_at": "2016-12-09T21:05:49.955Z",
"updated_at": "2016-12-09T21:05:49.955Z"
},
{
"id": 711,
"name": "Jaffa Cakes",
"code": "c3cbcd4b-7465-4e98-b103-51f07c41c3c6",
"time_to_bake_in_seconds": 3108,
"created_at": "2016-12-09T21:05:49.959Z",
"updated_at": "2016-12-09T21:05:49.959Z"
},
{
"id": 712,
"name": "Kabuni",
"code": "2a24139c-51bd-4b55-b247-ff53c9e20baa",
"time_to_bake_in_seconds": 2921,
"created_at": "2016-12-09T21:05:49.963Z",
"updated_at": "2016-12-09T21:05:49.963Z"
},
{
"id": 713,
"name": "Karpatka",
"code": "8368e535-a8c6-4a35-8ac6-bc3c8bb9d479",
"time_to_bake_in_seconds": 2712,
"created_at": "2016-12-09T21:05:49.968Z",
"updated_at": "2016-12-09T21:05:49.968Z"
},
{
"id": 714,
"name": "Kiev cake",
"code": "b7f71e9f-4f4e-4438-a730-9a76393bd701",
"time_to_bake_in_seconds": 2939,
"created_at": "2016-12-09T21:05:49.972Z",
"updated_at": "2016-12-09T21:05:49.972Z"
},
{
"id": 715,
"name": "King cake",
"code": "f9c3ec36-62b2-4bb1-a8ce-a4798cda78cf",
"time_to_bake_in_seconds": 3206,
"created_at": "2016-12-09T21:05:49.976Z",
"updated_at": "2016-12-09T21:05:49.976Z"
},
{
"id": 716,
"name": "Kladdkaka",
"code": "82600a7f-9a10-4b2f-99a0-703fc4ddd5c7",
"time_to_bake_in_seconds": 2729,
"created_at": "2016-12-09T21:05:49.980Z",
"updated_at": "2016-12-09T21:05:49.980Z"
},
{
"id": 717,
"name": "Kliņģeris",
"code": "f2453f35-2db4-49d8-8a99-652dc91477d3",
"time_to_bake_in_seconds": 3160,
"created_at": "2016-12-09T21:05:49.984Z",
"updated_at": "2016-12-09T21:05:49.984Z"
},
{
"id": 718,
"name": "Kołacz",
"code": "31c8a1ef-c1ba-4ddb-8f98-c35110887895",
"time_to_bake_in_seconds": 2962,
"created_at": "2016-12-09T21:05:49.991Z",
"updated_at": "2016-12-09T21:05:49.991Z"
},
{
"id": 719,
"name": "Kolaczki",
"code": "df57ca77-a113-4ed5-a4c8-02274d10d0b5",
"time_to_bake_in_seconds": 3169,
"created_at": "2016-12-09T21:05:49.997Z",
"updated_at": "2016-12-09T21:05:49.997Z"
},
{
"id": 720,
"name": "Kouign-amann",
"code": "13c1df19-79be-4990-a378-a8c7cb7c827f",
"time_to_bake_in_seconds": 2982,
"created_at": "2016-12-09T21:05:50.003Z",
"updated_at": "2016-12-09T21:05:50.003Z"
},
{
"id": 721,
"name": "Kutia",
"code": "076db934-6618-4200-966f-29d4ab876398",
"time_to_bake_in_seconds": 2896,
"created_at": "2016-12-09T21:05:50.009Z",
"updated_at": "2016-12-09T21:05:50.009Z"
},
{
"id": 722,
"name": "Kransekake",
"code": "d56c789d-7ecd-47d4-9423-ecdc81a3e4d3",
"time_to_bake_in_seconds": 3159,
"created_at": "2016-12-09T21:05:50.014Z",
"updated_at": "2016-12-09T21:05:50.014Z"
},
{
"id": 723,
"name": "Kremówka",
"code": "fe36650f-54f9-4287-82f3-ac9da4b0c042",
"time_to_bake_in_seconds": 3162,
"created_at": "2016-12-09T21:05:50.019Z",
"updated_at": "2016-12-09T21:05:50.019Z"
},
{
"id": 724,
"name": "Krówka",
"code": "a7d37f50-2ae2-4894-9427-c8f2ee85f1c1",
"time_to_bake_in_seconds": 2715,
"created_at": "2016-12-09T21:05:50.023Z",
"updated_at": "2016-12-09T21:05:50.023Z"
},
{
"id": 725,
"name": "Lady Baltimore cake",
"code": "f74a161e-43e5-49e9-871d-8887a89395d6",
"time_to_bake_in_seconds": 2892,
"created_at": "2016-12-09T21:05:50.028Z",
"updated_at": "2016-12-09T21:05:50.028Z"
},
{
"id": 726,
"name": "Lamanki or Klamäti",
"code": "2605b0b4-b3eb-473a-b8a6-83e247927237",
"time_to_bake_in_seconds": 3118,
"created_at": "2016-12-09T21:05:50.032Z",
"updated_at": "2016-12-09T21:05:50.032Z"
},
{
"id": 727,
"name": "Lamington",
"code": "e0597453-93d9-47ec-bbe9-cb3faa89094a",
"time_to_bake_in_seconds": 3037,
"created_at": "2016-12-09T21:05:50.036Z",
"updated_at": "2016-12-09T21:05:50.036Z"
},
{
"id": 728,
"name": "Layer cake",
"code": "45deb658-08b3-43f7-b685-a1d2c51d6102",
"time_to_bake_in_seconds": 3267,
"created_at": "2016-12-09T21:05:50.040Z",
"updated_at": "2016-12-09T21:05:50.040Z"
},
{
"id": 729,
"name": "Lemon cake",
"code": "33af9340-e4a7-40ef-8172-d46f34333165",
"time_to_bake_in_seconds": 2707,
"created_at": "2016-12-09T21:05:50.045Z",
"updated_at": "2016-12-09T21:05:50.045Z"
},
{
"id": 730,
"name": "Madeira cake",
"code": "85ad8038-966b-4ee2-be93-a0c8ce7f3d37",
"time_to_bake_in_seconds": 2849,
"created_at": "2016-12-09T21:05:50.049Z",
"updated_at": "2016-12-09T21:05:50.049Z"
},
{
"id": 731,
"name": "Makowiec",
"code": "8b9914fd-387d-49b8-93e5-d42089d748de",
"time_to_bake_in_seconds": 2993,
"created_at": "2016-12-09T21:05:50.053Z",
"updated_at": "2016-12-09T21:05:50.053Z"
},
{
"id": 732,
"name": "Magdalena",
"code": "1bfb1f5d-5de5-4c2e-ae31-8b4beae74459",
"time_to_bake_in_seconds": 3012,
"created_at": "2016-12-09T21:05:50.057Z",
"updated_at": "2016-12-09T21:05:50.057Z"
},
{
"id": 733,
"name": "Mantecada",
"code": "1aca87dd-fbf4-4dc6-b45a-b6d5709fa64d",
"time_to_bake_in_seconds": 3105,
"created_at": "2016-12-09T21:05:50.061Z",
"updated_at": "2016-12-09T21:05:50.061Z"
},
{
"id": 734,
"name": "Marble cake",
"code": "024b7e83-21be-41d8-9491-c5d9a855f7a0",
"time_to_bake_in_seconds": 2868,
"created_at": "2016-12-09T21:05:50.065Z",
"updated_at": "2016-12-09T21:05:50.065Z"
},
{
"id": 735,
"name": "Mazurek",
"code": "fe257186-a55d-4836-8b3c-1497c48eb1a8",
"time_to_bake_in_seconds": 3109,
"created_at": "2016-12-09T21:05:50.070Z",
"updated_at": "2016-12-09T21:05:50.070Z"
},
{
"id": 736,
"name": "Merveilleux",
"code": "b660abbd-47f0-440c-90ce-8e40888bf4bc",
"time_to_bake_in_seconds": 2793,
"created_at": "2016-12-09T21:05:50.075Z",
"updated_at": "2016-12-09T21:05:50.075Z"
},
{
"id": 737,
"name": "Mille-feuille",
"code": "eb8f4d19-57c7-4e3f-aadf-e2795c984292",
"time_to_bake_in_seconds": 2744,
"created_at": "2016-12-09T21:05:50.079Z",
"updated_at": "2016-12-09T21:05:50.079Z"
},
{
"id": 738,
"name": "Misérable cake",
"code": "c776d189-7ec7-48a4-81f0-1e5deb30037b",
"time_to_bake_in_seconds": 3206,
"created_at": "2016-12-09T21:05:50.085Z",
"updated_at": "2016-12-09T21:05:50.085Z"
},
{
"id": 739,
"name": "Molten chocolate cake",
"code": "63e204e5-81f6-4848-ba03-ade0bc5a45fa",
"time_to_bake_in_seconds": 3164,
"created_at": "2016-12-09T21:05:50.089Z",
"updated_at": "2016-12-09T21:05:50.089Z"
},
{
"id": 740,
"name": "Mooncake",
"code": "724cf028-6723-484d-8db8-c7452de91a26",
"time_to_bake_in_seconds": 3031,
"created_at": "2016-12-09T21:05:50.094Z",
"updated_at": "2016-12-09T21:05:50.094Z"
},
{
"id": 741,
"name": "Muffin",
"code": "82ff1d50-b135-47f8-b751-8dcf5c87f1fe",
"time_to_bake_in_seconds": 2873,
"unit_price_in_cents": 300,
"for_sale": true,
"created_at": "2016-12-09T21:05:50.099Z",
"updated_at": "2016-12-09T21:05:50.099Z",
"image_url": "Muffin.jpg"
},
{
"id": 742,
"name": "Napoleonshat",
"code": "cdc361b6-c010-448d-81c2-c939e207a0fe",
"time_to_bake_in_seconds": 3228,
"created_at": "2016-12-09T21:05:50.103Z",
"updated_at": "2016-12-09T21:05:50.103Z"
},
{
"id": 743,
"name": "Napeleonskake",
"code": "2158a8c7-0f13-4af7-b9eb-a9f81c2eb2ae",
"time_to_bake_in_seconds": 3244,
"created_at": "2016-12-09T21:05:50.107Z",
"updated_at": "2016-12-09T21:05:50.107Z"
},
{
"id": 744,
"name": "Nasturtium cake",
"code": "2c45d204-b2e8-4c40-9a45-7d7c958fd3ce",
"time_to_bake_in_seconds": 3038,
"created_at": "2016-12-09T21:05:50.112Z",
"updated_at": "2016-12-09T21:05:50.112Z"
},
{
"id": 745,
"name": "Onion cake",
"code": "17fcf91d-66d0-45ff-a1a7-5667786a7761",
"time_to_bake_in_seconds": 3148,
"created_at": "2016-12-09T21:05:50.116Z",
"updated_at": "2016-12-09T21:05:50.116Z"
},
{
"id": 746,
"name": "Oponki or Pączki",
"code": "fdea9ebc-2638-4b0d-9625-ebeb2c98da34",
"time_to_bake_in_seconds": 3250,
"created_at": "2016-12-09T21:05:50.120Z",
"updated_at": "2016-12-09T21:05:50.120Z"
},
{
"id": 747,
"name": "Opera cake",
"code": "239b14df-2c80-418b-8577-c941cecb7891",
"time_to_bake_in_seconds": 2998,
"created_at": "2016-12-09T21:05:50.124Z",
"updated_at": "2016-12-09T21:05:50.124Z"
},
{
"id": 748,
"name": "Orange and polenta cake",
"code": "fd293079-aa21-4fc9-b6a0-210cfd06b514",
"time_to_bake_in_seconds": 2789,
"created_at": "2016-12-09T21:05:50.128Z",
"updated_at": "2016-12-09T21:05:50.128Z"
},
{
"id": 749,
"name": "Othellolagkage",
"code": "787aad28-318c-449b-8dab-eb2145bf2635",
"time_to_bake_in_seconds": 2831,
"created_at": "2016-12-09T21:05:50.135Z",
"updated_at": "2016-12-09T21:05:50.135Z"
},
{
"id": 750,
"name": "Pan di Spagna",
"code": "4a17df75-8543-4318-9936-bc593bd9d59f",
"time_to_bake_in_seconds": 3104,
"created_at": "2016-12-09T21:05:50.141Z",
"updated_at": "2016-12-09T21:05:50.141Z"
},
{
"id": 751,
"name": "Pancake",
"code": "a9355775-b7c6-453e-9e3b-4ddcaddef867",
"time_to_bake_in_seconds": 2731,
"created_at": "2016-12-09T21:05:50.147Z",
"updated_at": "2016-12-09T21:05:50.147Z"
},
{
"id": 752,
"name": "Panpepato",
"code": "4b905514-fe5f-4776-8a02-9f54b607699d",
"time_to_bake_in_seconds": 3155,
"created_at": "2016-12-09T21:05:50.152Z",
"updated_at": "2016-12-09T21:05:50.152Z"
},
{
"id": 753,
"name": "Panettone",
"code": "04e8c35c-8679-4e2c-b704-29e085cc4699",
"time_to_bake_in_seconds": 3160,
"created_at": "2016-12-09T21:05:50.158Z",
"updated_at": "2016-12-09T21:05:50.158Z"
},
{
"id": 754,
"name": "Parkin",
"code": "d474a6de-84d6-4aac-aebd-ec998c6ec0f7",
"time_to_bake_in_seconds": 2927,
"created_at": "2016-12-09T21:05:50.163Z",
"updated_at": "2016-12-09T21:05:50.163Z"
},
{
"id": 755,
"name": "Pavlova",
"code": "ef058500-8615-4b36-b7e5-5865888fda28",
"time_to_bake_in_seconds": 3299,
"created_at": "2016-12-09T21:05:50.167Z",
"updated_at": "2016-12-09T21:05:50.167Z"
},
{
"id": 756,
"name": "Petit Gâteau",
"code": "239e0d67-c495-499e-b4cf-c1e3d0892fec",
"time_to_bake_in_seconds": 3182,
"created_at": "2016-12-09T21:05:50.171Z",
"updated_at": "2016-12-09T21:05:50.171Z"
},
{
"id": 757,
"name": "Petits fours",
"code": "7316d278-c243-40d1-88b4-7be2129ff881",
"time_to_bake_in_seconds": 2816,
"created_at": "2016-12-09T21:05:50.176Z",
"updated_at": "2016-12-09T21:05:50.176Z"
},
{
"id": 758,
"name": "Piernik",
"code": "40d584ef-8d93-46b4-9ceb-9cfa6014e81d",
"time_to_bake_in_seconds": 3031,
"created_at": "2016-12-09T21:05:50.180Z",
"updated_at": "2016-12-09T21:05:50.180Z"
},
{
"id": 759,
"name": "Plum cake",
"code": "37526bd1-965d-47f7-8a48-48db6ca3b15d",
"time_to_bake_in_seconds": 3125,
"created_at": "2016-12-09T21:05:50.184Z",
"updated_at": "2016-12-09T21:05:50.184Z"
},
{
"id": 760,
"name": "Pound cake",
"code": "84066f09-1e8f-4f5f-9c06-2b4973775625",
"time_to_bake_in_seconds": 2827,
"created_at": "2016-12-09T21:05:50.188Z",
"updated_at": "2016-12-09T21:05:50.188Z"
},
{
"id": 761,
"name": "Princess cake",
"code": "3d9d6640-0b51-40aa-afa2-869d2582af45",
"time_to_bake_in_seconds": 2865,
"created_at": "2016-12-09T21:05:50.192Z",
"updated_at": "2016-12-09T21:05:50.192Z"
},
{
"id": 762,
"name": "Prinzregententorte",
"code": "c6a46896-af96-4b12-a980-daa75082e8a4",
"time_to_bake_in_seconds": 2706,
"created_at": "2016-12-09T21:05:50.196Z",
"updated_at": "2016-12-09T21:05:50.196Z"
},
{
"id": 763,
"name": "Pumpkin bread",
"code": "a34f32d6-d6ed-4360-ac9f-8627259add31",
"time_to_bake_in_seconds": 3104,
"created_at": "2016-12-09T21:05:50.201Z",
"updated_at": "2016-12-09T21:05:50.201Z"
},
{
"id": 764,
"name": "Punschkrapfen",
"code": "5c9273b1-b85f-4026-b3c4-997a9caf207c",
"time_to_bake_in_seconds": 3260,
"created_at": "2016-12-09T21:05:50.205Z",
"updated_at": "2016-12-09T21:05:50.205Z"
},
{
"id": 765,
"name": "Queen Elizabeth cake",
"code": "7a0dc932-5429-4c06-bee9-fc850b22e72e",
"time_to_bake_in_seconds": 2919,
"created_at": "2016-12-09T21:05:50.209Z",
"updated_at": "2016-12-09T21:05:50.209Z"
},
{
"id": 766,
"name": "Qumeshtore me pete",
"code": "b94e4929-b9ef-473a-ab80-76e5c876fd7b",
"time_to_bake_in_seconds": 2770,
"created_at": "2016-12-09T21:05:50.214Z",
"updated_at": "2016-12-09T21:05:50.214Z"
},
{
"id": 767,
"name": "Red bean cake",
"code": "c85d400a-f334-435c-a05b-b95399ea9b3f",
"time_to_bake_in_seconds": 3133,
"created_at": "2016-12-09T21:05:50.219Z",
"updated_at": "2016-12-09T21:05:50.219Z"
},
{
"id": 768,
"name": "Red velvet cake",
"code": "87d8fe60-0cdf-4939-a2a6-6c67316510cd",
"time_to_bake_in_seconds": 2823,
"created_at": "2016-12-09T21:05:50.223Z",
"updated_at": "2016-12-09T21:05:50.223Z"
},
{
"id": 769,
"name": "Rum cake",
"code": "42c344d7-2db4-487c-bdbd-91dbae28785e",
"time_to_bake_in_seconds": 2934,
"created_at": "2016-12-09T21:05:50.227Z",
"updated_at": "2016-12-09T21:05:50.227Z"
},
{
"id": 770,
"name": "Rum baba",
"code": "0d4a6af1-95db-4cbe-8c90-e11a163800b7",
"time_to_bake_in_seconds": 2734,
"created_at": "2016-12-09T21:05:50.231Z",
"updated_at": "2016-12-09T21:05:50.231Z"
},
{
"id": 771,
"name": "Ruske kape",
"code": "0fa8f595-ced3-4157-8d70-199b335e95c9",
"time_to_bake_in_seconds": 3090,
"created_at": "2016-12-09T21:05:50.239Z",
"updated_at": "2016-12-09T21:05:50.239Z"
},
{
"id": 772,
"name": "Sachertorte",
"code": "4fdbfa7b-e26f-48bb-b676-1b6929978910",
"time_to_bake_in_seconds": 3288,
"created_at": "2016-12-09T21:05:50.244Z",
"updated_at": "2016-12-09T21:05:50.244Z"
},
{
"id": 773,
"name": "Šakotis",
"code": "f18bb13f-6a8e-41aa-ad78-4ba6b46b1cfe",
"time_to_bake_in_seconds": 3132,
"created_at": "2016-12-09T21:05:50.249Z",
"updated_at": "2016-12-09T21:05:50.249Z"
},
{
"id": 774,
"name": "Salzburger Nockerl",
"code": "385e9ced-3beb-44b4-bb5b-82a5b2444390",
"time_to_bake_in_seconds": 2870,
"created_at": "2016-12-09T21:05:50.254Z",
"updated_at": "2016-12-09T21:05:50.254Z"
},
{
"id": 775,
"name": "Sekacz",
"code": "854f85e8-6614-4d43-8fcc-58a036022c85",
"time_to_bake_in_seconds": 3274,
"created_at": "2016-12-09T21:05:50.258Z",
"updated_at": "2016-12-09T21:05:50.258Z"
},
{
"id": 776,
"name": "Sernik",
"code": "296670e0-8be0-4c39-9514-6ae50f538177",
"time_to_bake_in_seconds": 3030,
"created_at": "2016-12-09T21:05:50.262Z",
"updated_at": "2016-12-09T21:05:50.262Z"
},
{
"id": 777,
"name": "Sesame seed cake",
"code": "83580079-c5b0-4ff5-9a4a-7943ae980e7f",
"time_to_bake_in_seconds": 3077,
"created_at": "2016-12-09T21:05:50.266Z",
"updated_at": "2016-12-09T21:05:50.266Z"
},
{
"id": 778,
"name": "Sfouf",
"code": "2374bf5f-d031-47eb-90d6-3d0836d0aba1",
"time_to_bake_in_seconds": 3289,
"created_at": "2016-12-09T21:05:50.271Z",
"updated_at": "2016-12-09T21:05:50.271Z"
},
{
"id": 779,
"name": "Simnel cake",
"code": "c557e8b8-3aed-4a7b-b2ac-fddf12b9e988",
"time_to_bake_in_seconds": 3189,
"created_at": "2016-12-09T21:05:50.275Z",
"updated_at": "2016-12-09T21:05:50.275Z"
},
{
"id": 780,
"name": "Smoked salmon cheesecake",
"code": "49e30ea0-4503-4274-9c73-e99918b411cc",
"time_to_bake_in_seconds": 3081,
"created_at": "2016-12-09T21:05:50.279Z",
"updated_at": "2016-12-09T21:05:50.279Z"
},
{
"id": 781,
"name": "Smörgåstårta",
"code": "709e4239-6f2e-4fa1-8e37-5af10edf0562",
"time_to_bake_in_seconds": 2989,
"created_at": "2016-12-09T21:05:50.286Z",
"updated_at": "2016-12-09T21:05:50.286Z"
},
{
"id": 782,
"name": "Snowball cake",
"code": "d02fda80-37fc-4468-9e32-f65380a19e7e",
"time_to_bake_in_seconds": 3177,
"created_at": "2016-12-09T21:05:50.294Z",
"updated_at": "2016-12-09T21:05:50.294Z"
},
{
"id": 783,
"name": "Snow skin mooncake",
"code": "b1890ea9-3afe-498c-8530-cf78e4520657",
"time_to_bake_in_seconds": 2973,
"created_at": "2016-12-09T21:05:50.301Z",
"updated_at": "2016-12-09T21:05:50.301Z"
},
{
"id": 784,
"name": "Soufflé",
"code": "a32cb091-50ea-4db8-a542-4d5a529af384",
"time_to_bake_in_seconds": 3090,
"created_at": "2016-12-09T21:05:50.307Z",
"updated_at": "2016-12-09T21:05:50.307Z"
},
{
"id": 785,
"name": "Spekkoek",
"code": "22a43a94-5f3c-4ca6-9b08-aee22341a1d2",
"time_to_bake_in_seconds": 2959,
"created_at": "2016-12-09T21:05:50.313Z",
"updated_at": "2016-12-09T21:05:50.313Z"
},
{
"id": 786,
"name": "Spice cake",
"code": "dc290f08-4105-4576-bb95-3d7635574eee",
"time_to_bake_in_seconds": 2924,
"unit_price_in_cents": 2200,
"for_sale": true,
"created_at": "2016-12-09T21:05:50.319Z",
"updated_at": "2016-12-09T21:05:50.319Z",
"image_url": "Spice-Cake_8517.jpg"
},
{
"id": 787,
"name": "Spit cake",
"code": "1e976c2b-4145-41bd-afae-afdf9d02ef85",
"time_to_bake_in_seconds": 3147,
"created_at": "2016-12-09T21:05:50.324Z",
"updated_at": "2016-12-09T21:05:50.324Z"
},
{
"id": 788,
"name": "Sponge cake",
"code": "1e3ed39c-965d-42c7-a4a4-cb7af03db91a",
"time_to_bake_in_seconds": 3117,
"created_at": "2016-12-09T21:05:50.330Z",
"updated_at": "2016-12-09T21:05:50.330Z"
},
{
"id": 789,
"name": "St. Honoré cake",
"code": "e3f4ca50-04a3-436d-a5fa-f38a6d9ea88a",
"time_to_bake_in_seconds": 2873,
"created_at": "2016-12-09T21:05:50.336Z",
"updated_at": "2016-12-09T21:05:50.336Z"
},
{
"id": 790,
"name": "Stack cake",
"code": "11216ca9-f5cf-488f-94a1-4c642e052382",
"time_to_bake_in_seconds": 3159,
"created_at": "2016-12-09T21:05:50.341Z",
"updated_at": "2016-12-09T21:05:50.341Z"
},
{
"id": 791,
"name": "Strawberry cake",
"code": "b4651afc-6dff-44a3-bfdf-c429c33591f8",
"time_to_bake_in_seconds": 2845,
"created_at": "2016-12-09T21:05:50.347Z",
"updated_at": "2016-12-09T21:05:50.347Z"
},
{
"id": 792,
"name": "Streuselkuchen",
"code": "c2adb30e-ef3c-4f4d-ba33-9b2f477ab5be",
"time_to_bake_in_seconds": 2821,
"created_at": "2016-12-09T21:05:50.360Z",
"updated_at": "2016-12-09T21:05:50.360Z"
},
{
"id": 793,
"name": "Studenterbrød",
"code": "84542fbc-20ff-4865-b428-db5470d17f70",
"time_to_bake_in_seconds": 3191,
"created_at": "2016-12-09T21:05:50.364Z",
"updated_at": "2016-12-09T21:05:50.364Z"
},
{
"id": 794,
"name": "Sultana and cherry cake",
"code": "93397204-eee7-4b08-8b0a-4ddfa8fe7ec8",
"time_to_bake_in_seconds": 3187,
"created_at": "2016-12-09T21:05:50.368Z",
"updated_at": "2016-12-09T21:05:50.368Z"
},
{
"id": 795,
"name": "Suncake",
"code": "0cb1b07e-becb-4c36-83e7-b6d6fc39d483",
"time_to_bake_in_seconds": 3266,
"created_at": "2016-12-09T21:05:50.372Z",
"updated_at": "2016-12-09T21:05:50.372Z"
},
{
"id": 796,
"name": "Swiss roll",
"code": "68ce96f8-89e3-4b7d-a2a1-06b64a32bee9",
"time_to_bake_in_seconds": 3086,
"created_at": "2016-12-09T21:05:50.375Z",
"updated_at": "2016-12-09T21:05:50.375Z"
},
{
"id": 797,
"name": "Tarte Tatin",
"code": "1b17e14f-c470-4a45-8eba-fd4913a28c7c",
"time_to_bake_in_seconds": 2986,
"created_at": "2016-12-09T21:05:50.379Z",
"updated_at": "2016-12-09T21:05:50.379Z"
},
{
"id": 798,
"name": "Tea loaf",
"code": "1566f5d8-b7e9-4abf-b876-0f391a0f77ee",
"time_to_bake_in_seconds": 2818,
"created_at": "2016-12-09T21:05:50.384Z",
"updated_at": "2016-12-09T21:05:50.384Z"
},
{
"id": 799,
"name": "Teacake",
"code": "41560b38-3360-423c-9743-f15c1474c639",
"time_to_bake_in_seconds": 2973,
"created_at": "2016-12-09T21:05:50.388Z",
"updated_at": "2016-12-09T21:05:50.388Z"
},
{
"id": 800,
"name": "Tiramisu",
"code": "38092958-9ef7-45d6-a672-b02c0d2ed298",
"time_to_bake_in_seconds": 3203,
"created_at": "2016-12-09T21:05:50.393Z",
"updated_at": "2016-12-09T21:05:50.393Z"
},
{
"id": 801,
"name": "Tompouce",
"code": "a4a42fff-8563-46b4-86f5-f3b917811249",
"time_to_bake_in_seconds": 3296,
"created_at": "2016-12-09T21:05:50.397Z",
"updated_at": "2016-12-09T21:05:50.397Z"
},
{
"id": 802,
"name": "Torta Tre Monti",
"code": "00363c5c-a928-43f2-833d-2d5df68c39a0",
"time_to_bake_in_seconds": 3001,
"created_at": "2016-12-09T21:05:50.402Z",
"updated_at": "2016-12-09T21:05:50.402Z"
},
{
"id": 803,
"name": "Tres leches cake",
"code": "ecaaa7f2-01c7-4f0f-a01e-e6e9754e6b6d",
"time_to_bake_in_seconds": 2864,
"created_at": "2016-12-09T21:05:50.406Z",
"updated_at": "2016-12-09T21:05:50.406Z"
},
{
"id": 804,
"name": "Tunis cake",
"code": "20891393-3adb-4d59-ab04-2828f72fb00e",
"time_to_bake_in_seconds": 3234,
"created_at": "2016-12-09T21:05:50.410Z",
"updated_at": "2016-12-09T21:05:50.410Z"
},
{
"id": 805,
"name": "Træstammer",
"code": "d58c567f-092d-4441-9fbc-71ba1c463f38",
"time_to_bake_in_seconds": 3197,
"created_at": "2016-12-09T21:05:50.414Z",
"updated_at": "2016-12-09T21:05:50.414Z"
},
{
"id": 806,
"name": "Upside-down cake",
"code": "ac8efcf0-421c-43c8-9170-e09c66535325",
"time_to_bake_in_seconds": 2992,
"created_at": "2016-12-09T21:05:50.419Z",
"updated_at": "2016-12-09T21:05:50.419Z"
},
{
"id": 807,
"name": "Victoria sponge cake",
"code": "8ad2013a-ece5-4aac-886f-75261e9b65c2",
"time_to_bake_in_seconds": 3117,
"created_at": "2016-12-09T21:05:50.423Z",
"updated_at": "2016-12-09T21:05:50.423Z"
},
{
"id": 808,
"name": "Vínarterta",
"code": "18b18d77-1b08-4f35-9e23-6ce753c011cf",
"time_to_bake_in_seconds": 2764,
"created_at": "2016-12-09T21:05:50.427Z",
"updated_at": "2016-12-09T21:05:50.427Z"
},
{
"id": 809,
"name": "Wedding cake",
"code": "0b0384d5-dada-4421-ac42-13b1f9a5b45b",
"time_to_bake_in_seconds": 3194,
"created_at": "2016-12-09T21:05:50.432Z",
"updated_at": "2016-12-09T21:05:50.432Z"
},
{
"id": 810,
"name": "Welsh cake",
"code": "dede3403-3ad8-47d5-a98b-bc54d3ef5c03",
"time_to_bake_in_seconds": 2706,
"created_at": "2016-12-09T21:05:50.437Z",
"updated_at": "2016-12-09T21:05:50.437Z"
},
{
"id": 811,
"name": "Whoopie pies",
"code": "0ffaa1a7-1d1d-4008-82a5-ab4d9a9841e5",
"time_to_bake_in_seconds": 3232,
"unit_price_in_cents": 300,
"for_sale": true,
"created_at": "2016-12-09T21:05:50.443Z",
"updated_at": "2016-12-09T21:05:50.443Z",
"image_url": "WhoopiePir.jpg"
},
{
"id": 812,
"name": "Wine cake",
"code": "abee82eb-adc1-447d-99c3-e8bf7d60ab2d",
"time_to_bake_in_seconds": 2918,
"created_at": "2016-12-09T21:05:50.449Z",
"updated_at": "2016-12-09T21:05:50.449Z"
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
