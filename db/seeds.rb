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
    id: 1,
    for_sale: true,
    name: "Adobe bread",
    code: "3eeafe68-779b-4ecf-bd43-031b50be443c",
    time_to_bake_in_seconds: 1804,
    created_at: "2016-12-08T23:14:18.346Z",
    updated_at: "2016-12-08T23:14:18.346Z"
  },
  {
    id: 2,
    for_sale: false,
    name: "Amish friendship bread",
    code: "ff755d47-1172-41cc-86bb-e7761f19a8b6",
    time_to_bake_in_seconds: 1662,
    created_at: "2016-12-08T23:14:18.364Z",
    updated_at: "2016-12-08T23:14:18.364Z"
  },
  {
    id: 3,
    for_sale: true,
    name: "Anadama bread",
    code: "7d9499bc-4620-458f-81cb-875bfcb9a35e",
    time_to_bake_in_seconds: 1540,
    created_at: "2016-12-08T23:14:18.373Z",
    updated_at: "2016-12-08T23:14:18.373Z"
  },
  {
    id: 4,
    for_sale: true,
    name: "Banana bread",
    code: "e846946a-c202-4dca-90aa-e087b2ea5d81",
    time_to_bake_in_seconds: 1809,
    created_at: "2016-12-08T23:14:18.382Z",
    updated_at: "2016-12-08T23:14:18.382Z"
  },
  {
    id: 5,
    for_sale: true,
    name: "Beaten biscuit",
    code: "9d13f6eb-a45e-48dc-9bdc-8e99782305f5",
    time_to_bake_in_seconds: 1563,
    created_at: "2016-12-08T23:14:18.387Z",
    updated_at: "2016-12-08T23:14:18.387Z"
  },
  {
    id: 6,
    for_sale: true,
    name: "Biscuit",
    code: "4f772622-e43d-4b03-bd9d-60b91bb41bec",
    time_to_bake_in_seconds: 2058,
    created_at: "2016-12-08T23:14:18.393Z",
    updated_at: "2016-12-08T23:14:18.393Z"
  },
  {
    id: 7,
    for_sale: true,
    name: "Brown bread",
    code: "5dce3273-804c-407f-9375-c1614b8a5939",
    time_to_bake_in_seconds: 907,
    created_at: "2016-12-08T23:14:18.398Z",
    updated_at: "2016-12-08T23:14:18.398Z"
  },
  {
    id: 8,
    for_sale: false,
    name: "Bulkie roll",
    code: "091149d6-4992-48c1-9118-a578ad4dbe40",
    time_to_bake_in_seconds: 2022,
    created_at: "2016-12-08T23:14:18.404Z",
    updated_at: "2016-12-08T23:14:18.404Z"
  },
  {
    id: 9,
    for_sale: true,
    name: "Cornbread",
    code: "9caf6765-009c-47da-b654-8e6146d3a484",
    time_to_bake_in_seconds: 1704,
    created_at: "2016-12-08T23:14:18.409Z",
    updated_at: "2016-12-08T23:14:18.409Z"
  },
  {
    id: 10,
    for_sale: true,
    name: "Cuban bread",
    code: "810649af-3d3c-4ab8-a586-b47e20ce0c0c",
    time_to_bake_in_seconds: 1641,
    created_at: "2016-12-08T23:14:18.414Z",
    updated_at: "2016-12-08T23:14:18.414Z"
  },
  {
    id: 11,
    for_sale: true,
    name: "Frybread",
    code: "293509b9-bf69-48b5-aad9-3e78b8a89450",
    time_to_bake_in_seconds: 1699,
    created_at: "2016-12-08T23:14:18.418Z",
    updated_at: "2016-12-08T23:14:18.418Z"
  },
  {
    id: 12,
    for_sale: true,
    name: "Graham bread",
    code: "0a9ffbf1-37ca-4f98-bfb5-9893de8e04fa",
    time_to_bake_in_seconds: 2052,
    created_at: "2016-12-08T23:14:18.423Z",
    updated_at: "2016-12-08T23:14:18.423Z"
  },
  {
    id: 13,
    for_sale: true,
    name: "Hot water corn bread",
    code: "e43cf1f2-09f1-4c89-8883-23ef157211fc",
    time_to_bake_in_seconds: 1760,
    created_at: "2016-12-08T23:14:18.427Z",
    updated_at: "2016-12-08T23:14:18.427Z"
  },
  {
    id: 14,
    for_sale: true,
    name: "Hushpuppy",
    code: "978ac007-a19c-4aa9-9a01-111465306670",
    time_to_bake_in_seconds: 1851,
    created_at: "2016-12-08T23:14:18.431Z",
    updated_at: "2016-12-08T23:14:18.431Z"
  },
  {
    id: 15,
    for_sale: true,
    name: "Muffin",
    code: "63573006-9e71-4da2-9c85-beaaa4bbfcc0",
    time_to_bake_in_seconds: 1304,
    created_at: "2016-12-08T23:14:18.435Z",
    updated_at: "2016-12-08T23:14:18.435Z"
  },
  {
    id: 16,
    for_sale: true,
    name: "Muffuletta",
    code: "63e1b55d-77b0-4b49-bf0e-e9ac4f36b1cc",
    time_to_bake_in_seconds: 1696,
    created_at: "2016-12-08T23:14:18.439Z",
    updated_at: "2016-12-08T23:14:18.439Z"
  },
  {
    id: 17,
    for_sale: true,
    name: "Parker House roll",
    code: "e059dff3-347b-4187-9d01-510b76ba819c",
    time_to_bake_in_seconds: 1603,
    created_at: "2016-12-08T23:14:18.444Z",
    updated_at: "2016-12-08T23:14:18.444Z"
  },
  {
    id: 18,
    for_sale: true,
    name: "Pepperoni roll",
    code: "95c21070-7841-4e78-ab12-af3cf91606b3",
    time_to_bake_in_seconds: 1768,
    created_at: "2016-12-08T23:14:18.448Z",
    updated_at: "2016-12-08T23:14:18.448Z"
  },
  {
    id: 19,
    for_sale: true,
    name: "Popover",
    code: "39ab7ba6-2276-4b8c-adc1-644f3febacd7",
    time_to_bake_in_seconds: 1721,
    created_at: "2016-12-08T23:14:18.452Z",
    updated_at: "2016-12-08T23:14:18.452Z"
  },
  {
    id: 20,
    for_sale: true,
    name: "Pullman loaf",
    code: "4184ce36-5758-47c6-b85b-b539b5edc3f5",
    time_to_bake_in_seconds: 1899,
    created_at: "2016-12-08T23:14:18.456Z",
    updated_at: "2016-12-08T23:14:18.456Z"
  },
  {
    id: 21,
    for_sale: true,
    name: "Salt-rising bread",
    code: "29aed8f4-f744-4bcc-bc92-95e778d72c60",
    time_to_bake_in_seconds: 2034,
    created_at: "2016-12-08T23:14:18.461Z",
    updated_at: "2016-12-08T23:14:18.461Z"
  },
  {
    id: 22,
    for_sale: true,
    name: "Scali bread",
    code: "1a01572a-1a1b-4329-9b1f-39247a1e8717",
    time_to_bake_in_seconds: 1940,
    created_at: "2016-12-08T23:14:18.465Z",
    updated_at: "2016-12-08T23:14:18.465Z"
  },
  {
    id: 23,
    for_sale: true,
    name: "Sloosh",
    code: "b66b88dd-8998-4252-9a96-9471b998f287",
    time_to_bake_in_seconds: 1653,
    created_at: "2016-12-08T23:14:18.469Z",
    updated_at: "2016-12-08T23:14:18.469Z"
  },
  {
    id: 24,
    for_sale: true,
    name: "Texas toast",
    code: "e2720077-7c6e-4864-a8e0-949e64c91e0f",
    time_to_bake_in_seconds: 1479,
    created_at: "2016-12-08T23:14:18.473Z",
    updated_at: "2016-12-08T23:14:18.473Z"
  },
  {
    id: 25,
    for_sale: true,
    name: "Angel food cake",
    code: "35c3c45a-9d20-40b5-b46b-412f89d9a57f",
    time_to_bake_in_seconds: 2851,
    created_at: "2016-12-08T23:14:18.478Z",
    updated_at: "2016-12-08T23:14:18.478Z"
  },
  {
    id: 26,
    for_sale: true,
    name: "Apple cake",
    code: "c47b21bd-bc3d-4691-89f9-c86dc8865b27",
    time_to_bake_in_seconds: 2929,
    created_at: "2016-12-08T23:14:18.482Z",
    updated_at: "2016-12-08T23:14:18.482Z"
  },
  {
    id: 27,
    for_sale: true,
    name: "Applesauce cake",
    code: "1cdb0407-dce0-4151-b8d4-3333ca7420c9",
    time_to_bake_in_seconds: 2847,
    created_at: "2016-12-08T23:14:18.486Z",
    updated_at: "2016-12-08T23:14:18.486Z"
  },
  {
    id: 28,
    for_sale: true,
    name: "Aranygaluska",
    code: "3c66ed31-e4d7-4381-a3cc-203b4a5ccd6a",
    time_to_bake_in_seconds: 3192,
    created_at: "2016-12-08T23:14:18.490Z",
    updated_at: "2016-12-08T23:14:18.490Z"
  },
  {
    id: 29,
    for_sale: true,
    name: "Avocado cake",
    code: "9b202592-0ce3-42b9-8359-840d17e37963",
    time_to_bake_in_seconds: 3112,
    created_at: "2016-12-08T23:14:18.495Z",
    updated_at: "2016-12-08T23:14:18.495Z"
  },
  {
    id: 30,
    for_sale: false,
    name: "Babka",
    code: "400f4813-405a-40c1-80c5-1541339421e8",
    time_to_bake_in_seconds: 3071,
    created_at: "2016-12-08T23:14:18.499Z",
    updated_at: "2016-12-08T23:14:18.499Z"
  },
  {
    id: 31,
    for_sale: true,
    name: "Ballokume",
    code: "af573eca-d183-4820-be38-93634c9c6c64",
    time_to_bake_in_seconds: 2717,
    created_at: "2016-12-08T23:14:18.503Z",
    updated_at: "2016-12-08T23:14:18.503Z"
  },
  {
    id: 32,
    for_sale: true,
    name: "Banana cake",
    code: "4eca2ba6-7678-4cb9-86e9-a729f8689595",
    time_to_bake_in_seconds: 2764,
    created_at: "2016-12-08T23:14:18.507Z",
    updated_at: "2016-12-08T23:14:18.507Z"
  },
  {
    id: 33,
    for_sale: true,
    name: "Basbousa",
    code: "f455105a-1994-4446-a94c-f27b3605acc2",
    time_to_bake_in_seconds: 3279,
    created_at: "2016-12-08T23:14:18.512Z",
    updated_at: "2016-12-08T23:14:18.512Z"
  },
  {
    id: 34,
    for_sale: true,
    name: "Beer cake",
    code: "ab619a2c-8bc6-4af8-acd7-cb00a5aa0b49",
    time_to_bake_in_seconds: 3186,
    created_at: "2016-12-08T23:14:18.516Z",
    updated_at: "2016-12-08T23:14:18.516Z"
  },
  {
    id: 35,
    for_sale: true,
    name: "Better than sex cake",
    code: "7f5f2b5e-6d47-442a-94f5-a10e2c550972",
    time_to_bake_in_seconds: 2743,
    created_at: "2016-12-08T23:14:18.520Z",
    updated_at: "2016-12-08T23:14:18.520Z"
  },
  {
    id: 36,
    for_sale: true,
    name: "Boston cream pie",
    code: "45fdf48f-7b79-462e-b207-a3d3f0196754",
    time_to_bake_in_seconds: 3082,
    created_at: "2016-12-08T23:14:18.524Z",
    updated_at: "2016-12-08T23:14:18.524Z"
  },
  {
    id: 37,
    for_sale: true,
    name: "Banana cake/bread",
    code: "701b6145-2b55-46d4-8ec7-b3fb070da5c9",
    time_to_bake_in_seconds: 3202,
    created_at: "2016-12-08T23:14:18.528Z",
    updated_at: "2016-12-08T23:14:18.528Z"
  },
  {
    id: 38,
    for_sale: true,
    name: "Banoffee pie",
    code: "f6ce8a26-b062-4e48-9d4a-58e4db4573ca",
    time_to_bake_in_seconds: 2972,
    created_at: "2016-12-08T23:14:18.533Z",
    updated_at: "2016-12-08T23:14:18.533Z"
  },
  {
    id: 39,
    for_sale: true,
    name: "Bara brith",
    code: "6fbebb02-1111-4872-a1f2-84fe60d105d8",
    time_to_bake_in_seconds: 3147,
    created_at: "2016-12-08T23:14:18.537Z",
    updated_at: "2016-12-08T23:14:18.537Z"
  },
  {
    id: 40,
    for_sale: true,
    name: "Battenberg cake",
    code: "72d91934-f39e-4daa-9d18-0b1eae763386",
    time_to_bake_in_seconds: 3278,
    created_at: "2016-12-08T23:14:18.542Z",
    updated_at: "2016-12-08T23:14:18.542Z"
  },
  {
    id: 41,
    for_sale: true,
    name: "Baumkuchen",
    code: "6b862098-9b99-4d6d-b3a2-b452caf2530e",
    time_to_bake_in_seconds: 2878,
    created_at: "2016-12-08T23:14:18.546Z",
    updated_at: "2016-12-08T23:14:18.546Z"
  },
  {
    id: 42,
    for_sale: true,
    name: "Bibingka",
    code: "c96192a1-c035-45e9-bd75-08dd212abda0",
    time_to_bake_in_seconds: 3254,
    created_at: "2016-12-08T23:14:18.550Z",
    updated_at: "2016-12-08T23:14:18.550Z"
  },
  {
    id: 43,
    for_sale: true,
    name: "Bienenstich Bee Sting",
    code: "6f6bae63-ac2f-41d5-b3c3-7295501f8b29",
    time_to_bake_in_seconds: 2825,
    created_at: "2016-12-08T23:14:18.555Z",
    updated_at: "2016-12-08T23:14:18.555Z"
  },
  {
    id: 44,
    for_sale: true,
    name: "Birthday cake",
    code: "c7151d93-38ee-4ee5-9e9a-1c060b275ec8",
    time_to_bake_in_seconds: 3017,
    created_at: "2016-12-08T23:14:18.559Z",
    updated_at: "2016-12-08T23:14:18.559Z"
  },
  {
    id: 45,
    for_sale: true,
    name: "Bizcocho Dominicano",
    code: "038cc516-5f80-4808-8d32-e451698e4a2e",
    time_to_bake_in_seconds: 2833,
    created_at: "2016-12-08T23:14:18.563Z",
    updated_at: "2016-12-08T23:14:18.563Z"
  },
  {
    id: 46,
    for_sale: true,
    name: "Black Forest cake",
    code: "dfe856ec-36bf-4ab4-991a-cc9801284812",
    time_to_bake_in_seconds: 2704,
    created_at: "2016-12-08T23:14:18.568Z",
    updated_at: "2016-12-08T23:14:18.568Z"
  },
  {
    id: 47,
    for_sale: true,
    name: "Blitztorte",
    code: "a39cb333-a549-4784-b757-595da6fdd24d",
    time_to_bake_in_seconds: 3179,
    created_at: "2016-12-08T23:14:18.572Z",
    updated_at: "2016-12-08T23:14:18.572Z"
  },
  {
    id: 48,
    for_sale: true,
    name: "Blondie",
    code: "732e2b97-e75c-462a-83be-2d98966329d8",
    time_to_bake_in_seconds: 2788,
    created_at: "2016-12-08T23:14:18.576Z",
    updated_at: "2016-12-08T23:14:18.576Z"
  },
  {
    id: 49,
    for_sale: true,
    name: "Bolo de mel",
    code: "40857bcf-bc50-48d1-a920-5dea2187552f",
    time_to_bake_in_seconds: 2831,
    created_at: "2016-12-08T23:14:18.581Z",
    updated_at: "2016-12-08T23:14:18.581Z"
  },
  {
    id: 50,
    for_sale: false,
    name: "Brazil nut cake",
    code: "4b2da525-6f2b-4b70-86d1-b7dc835aaa36",
    time_to_bake_in_seconds: 2851,
    created_at: "2016-12-08T23:14:18.585Z",
    updated_at: "2016-12-08T23:14:18.585Z"
  },
  {
    id: 51,
    for_sale: true,
    name: "Brownie",
    code: "6dc43020-513d-4fac-9cad-405cdb22224c",
    time_to_bake_in_seconds: 2790,
    created_at: "2016-12-08T23:14:18.589Z",
    updated_at: "2016-12-08T23:14:18.589Z"
  },
  {
    id: 52,
    for_sale: true,
    name: "Buccellato",
    code: "be6074db-ab18-4614-b15c-a26e46fb0a83",
    time_to_bake_in_seconds: 3030,
    created_at: "2016-12-08T23:14:18.596Z",
    updated_at: "2016-12-08T23:14:18.596Z"
  },
  {
    id: 53,
    for_sale: true,
    name: "Budapestlängd",
    code: "504c77d0-4d52-45e7-a349-9573f1566de7",
    time_to_bake_in_seconds: 2906,
    created_at: "2016-12-08T23:14:18.600Z",
    updated_at: "2016-12-08T23:14:18.600Z"
  },
  {
    id: 54,
    for_sale: true,
    name: "Bundt cake",
    code: "dea2374b-8e8e-4a46-bb56-c6fd79ac2118",
    time_to_bake_in_seconds: 2756,
    created_at: "2016-12-08T23:14:18.604Z",
    updated_at: "2016-12-08T23:14:18.604Z"
  },
  {
    id: 55,
    for_sale: true,
    name: "Butter cake",
    code: "603e99d0-983a-4ae9-9d55-64e2c9cdbbc0",
    time_to_bake_in_seconds: 2882,
    created_at: "2016-12-08T23:14:18.608Z",
    updated_at: "2016-12-08T23:14:18.608Z"
  },
  {
    id: 56,
    for_sale: true,
    name: "Butterfly cake",
    code: "acc27293-bb89-418a-87cf-9816245717a0",
    time_to_bake_in_seconds: 3199,
    created_at: "2016-12-08T23:14:18.612Z",
    updated_at: "2016-12-08T23:14:18.612Z"
  },
  {
    id: 57,
    for_sale: true,
    name: "Cassata",
    code: "a49c922a-9b24-41c1-a4fd-50c70e7eeb62",
    time_to_bake_in_seconds: 3275,
    created_at: "2016-12-08T23:14:18.617Z",
    updated_at: "2016-12-08T23:14:18.617Z"
  },
  {
    id: 58,
    for_sale: true,
    name: "Carrot cake",
    code: "05967b08-53eb-4c45-b282-3248843c8e43",
    time_to_bake_in_seconds: 2796,
    created_at: "2016-12-08T23:14:18.621Z",
    updated_at: "2016-12-08T23:14:18.621Z"
  },
  {
    id: 59,
    for_sale: true,
    name: "Cheesecake",
    code: "9193b92b-1296-4528-8069-690ef6134522",
    time_to_bake_in_seconds: 2796,
    created_at: "2016-12-08T23:14:18.625Z",
    updated_at: "2016-12-08T23:14:18.625Z"
  },
  {
    id: 60,
    for_sale: true,
    name: "Chestnut cake",
    code: "923680ba-a571-4c1f-9a59-14f7b6f934da",
    time_to_bake_in_seconds: 2826,
    created_at: "2016-12-08T23:14:18.629Z",
    updated_at: "2016-12-08T23:14:18.629Z"
  },
  {
    id: 61,
    for_sale: true,
    name: "Chiffon cake",
    code: "747e6704-bce9-4491-8761-1be84c2d07f5",
    time_to_bake_in_seconds: 2851,
    created_at: "2016-12-08T23:14:18.633Z",
    updated_at: "2016-12-08T23:14:18.633Z"
  },
  {
    id: 62,
    for_sale: true,
    name: "Chocolate cake",
    code: "c4e60b1a-e95e-4345-888f-07157d7f4642",
    time_to_bake_in_seconds: 3002,
    created_at: "2016-12-08T23:14:18.638Z",
    updated_at: "2016-12-08T23:14:18.638Z"
  },
  {
    id: 63,
    for_sale: true,
    name: "Christmas cake",
    code: "b429617e-7953-45b5-b96d-940e6a8ce25b",
    time_to_bake_in_seconds: 3138,
    created_at: "2016-12-08T23:14:18.642Z",
    updated_at: "2016-12-08T23:14:18.642Z"
  },
  {
    id: 64,
    for_sale: true,
    name: "Clementine cake",
    code: "1598b437-61fc-4187-b82e-ed48b374ce3a",
    time_to_bake_in_seconds: 2714,
    created_at: "2016-12-08T23:14:18.646Z",
    updated_at: "2016-12-08T23:14:18.646Z"
  },
  {
    id: 65,
    for_sale: true,
    name: "Coconut cake",
    code: "cca280af-897d-4637-b1f9-2f5d472af96a",
    time_to_bake_in_seconds: 2744,
    created_at: "2016-12-08T23:14:18.650Z",
    updated_at: "2016-12-08T23:14:18.650Z"
  },
  {
    id: 66,
    for_sale: true,
    name: "Coffee cake",
    code: "b158ef6e-ef04-4cf0-93dc-8d9c61f0a711",
    time_to_bake_in_seconds: 2817,
    created_at: "2016-12-08T23:14:18.655Z",
    updated_at: "2016-12-08T23:14:18.655Z"
  },
  {
    id: 67,
    for_sale: true,
    name: "Cremeschnitte",
    code: "598ba6e3-f284-4e87-8e22-c2fffb59d4f8",
    time_to_bake_in_seconds: 3149,
    created_at: "2016-12-08T23:14:18.659Z",
    updated_at: "2016-12-08T23:14:18.659Z"
  },
  {
    id: 68,
    for_sale: true,
    name: "Croquembouche",
    code: "ade60df2-37fa-48b7-b2ab-aec9f5a7fc29",
    time_to_bake_in_seconds: 3094,
    created_at: "2016-12-08T23:14:18.664Z",
    updated_at: "2016-12-08T23:14:18.664Z"
  },
  {
    id: 69,
    for_sale: true,
    name: "Crystal cake",
    code: "d4fc8418-c600-4f81-995a-f3e0afd1f145",
    time_to_bake_in_seconds: 3086,
    created_at: "2016-12-08T23:14:18.668Z",
    updated_at: "2016-12-08T23:14:18.668Z"
  },
  {
    id: 70,
    for_sale: true,
    name: "Cuatro leches cake",
    code: "799d63f9-31ad-4dd3-8ee0-aac10817f81b",
    time_to_bake_in_seconds: 2994,
    created_at: "2016-12-08T23:14:18.672Z",
    updated_at: "2016-12-08T23:14:18.672Z"
  },
  {
    id: 71,
    for_sale: true,
    name: "Cucumber cake",
    code: "144cd840-1014-455f-9769-f15069fda5a2",
    time_to_bake_in_seconds: 3168,
    created_at: "2016-12-08T23:14:18.676Z",
    updated_at: "2016-12-08T23:14:18.676Z"
  },
  {
    id: 72,
    for_sale: true,
    name: "Cupcake",
    code: "1454255f-bb00-44be-8a31-061692ca23ad",
    time_to_bake_in_seconds: 2856,
    created_at: "2016-12-08T23:14:18.681Z",
    updated_at: "2016-12-08T23:14:18.681Z"
  },
  {
    id: 73,
    for_sale: false,
    name: "Dacquoise",
    code: "02b082fe-07a3-45a7-ab52-abae7cd36848",
    time_to_bake_in_seconds: 2700,
    created_at: "2016-12-08T23:14:18.685Z",
    updated_at: "2016-12-08T23:14:18.685Z"
  },
  {
    id: 74,
    for_sale: true,
    name: "Date and walnut loaf",
    code: "03fff123-5a47-4c58-b72b-f8d0aabf6bc1",
    time_to_bake_in_seconds: 2896,
    created_at: "2016-12-08T23:14:18.690Z",
    updated_at: "2016-12-08T23:14:18.690Z"
  },
  {
    id: 75,
    for_sale: true,
    name: "Date square",
    code: "f0279b03-2782-4567-a930-094921e86ed5",
    time_to_bake_in_seconds: 3129,
    created_at: "2016-12-08T23:14:18.694Z",
    updated_at: "2016-12-08T23:14:18.694Z"
  },
  {
    id: 76,
    for_sale: true,
    name: "Depression cake",
    code: "d2f02206-a11c-4800-ae17-7309c6b51643",
    time_to_bake_in_seconds: 2715,
    created_at: "2016-12-08T23:14:18.698Z",
    updated_at: "2016-12-08T23:14:18.698Z"
  },
  {
    id: 77,
    for_sale: true,
    name: "Devil's food cake",
    code: "6d58aae2-8297-409d-9cbe-6e7510d451e6",
    time_to_bake_in_seconds: 3035,
    created_at: "2016-12-08T23:14:18.702Z",
    updated_at: "2016-12-08T23:14:18.702Z"
  },
  {
    id: 78,
    for_sale: true,
    name: "Dobos cake",
    code: "40c142a1-8bb7-4361-beb2-bf49182cfd27",
    time_to_bake_in_seconds: 3207,
    created_at: "2016-12-08T23:14:18.706Z",
    updated_at: "2016-12-08T23:14:18.706Z"
  },
  {
    id: 79,
    for_sale: true,
    name: "Dundee cake",
    code: "21d36374-aefc-4c77-82c6-364263eb78cc",
    time_to_bake_in_seconds: 3222,
    created_at: "2016-12-08T23:14:18.711Z",
    updated_at: "2016-12-08T23:14:18.711Z"
  },
  {
    id: 80,
    for_sale: true,
    name: "Eccles cake",
    code: "90bd322c-4623-4b8c-879d-0de03de0c0e7",
    time_to_bake_in_seconds: 2848,
    created_at: "2016-12-08T23:14:18.715Z",
    updated_at: "2016-12-08T23:14:18.715Z"
  },
  {
    id: 81,
    for_sale: true,
    name: "Esterházy torte",
    code: "cdc6ae19-061c-4f3e-b1ef-78611c4c1958",
    time_to_bake_in_seconds: 3170,
    created_at: "2016-12-08T23:14:18.719Z",
    updated_at: "2016-12-08T23:14:18.719Z"
  },
  {
    id: 82,
    for_sale: true,
    name: "Fat rascal",
    code: "197293a9-ad34-4a96-9dfe-874aa47e26a1",
    time_to_bake_in_seconds: 3171,
    created_at: "2016-12-08T23:14:18.724Z",
    updated_at: "2016-12-08T23:14:18.724Z"
  },
  {
    id: 83,
    for_sale: true,
    name: "Faworki",
    code: "ce919bab-5011-4b30-bd80-cfb76beac738",
    time_to_bake_in_seconds: 2901,
    created_at: "2016-12-08T23:14:18.728Z",
    updated_at: "2016-12-08T23:14:18.728Z"
  },
  {
    id: 84,
    for_sale: true,
    name: "Fig cake",
    code: "38c7f9ea-49c2-48cf-ab51-1df3682ca966",
    time_to_bake_in_seconds: 3280,
    created_at: "2016-12-08T23:14:18.733Z",
    updated_at: "2016-12-08T23:14:18.733Z"
  },
  {
    id: 85,
    for_sale: true,
    name: "Financier",
    code: "bd97c9c6-95b9-4796-af3b-8086b5925720",
    time_to_bake_in_seconds: 2835,
    created_at: "2016-12-08T23:14:18.737Z",
    updated_at: "2016-12-08T23:14:18.737Z"
  },
  {
    id: 86,
    for_sale: true,
    name: "Flourless chocolate cake",
    code: "500e156d-3ca8-4500-b6a6-df35c1e42ebe",
    time_to_bake_in_seconds: 3098,
    created_at: "2016-12-08T23:14:18.741Z",
    updated_at: "2016-12-08T23:14:18.741Z"
  },
  {
    id: 87,
    for_sale: true,
    name: "Fondant Fancy",
    code: "6ee30176-90bb-4003-84b5-3e633cdbb740",
    time_to_bake_in_seconds: 2947,
    created_at: "2016-12-08T23:14:18.746Z",
    updated_at: "2016-12-08T23:14:18.746Z"
  },
  {
    id: 88,
    for_sale: true,
    name: "Fragelité",
    code: "55856287-a75b-40fa-9a93-daa0fc0e9d88",
    time_to_bake_in_seconds: 3129,
    created_at: "2016-12-08T23:14:18.750Z",
    updated_at: "2016-12-08T23:14:18.750Z"
  },
  {
    id: 89,
    for_sale: true,
    name: "Frog cake",
    code: "f15a6588-7a6c-434f-a2e0-a5b4e58ac7cd",
    time_to_bake_in_seconds: 2918,
    created_at: "2016-12-08T23:14:18.755Z",
    updated_at: "2016-12-08T23:14:18.755Z"
  },
  {
    id: 90,
    for_sale: true,
    name: "Fruitcake",
    code: "2c2f1a3a-a705-42bf-b4a9-09ccf49793ab",
    time_to_bake_in_seconds: 2949,
    created_at: "2016-12-08T23:14:18.760Z",
    updated_at: "2016-12-08T23:14:18.760Z"
  },
  {
    id: 91,
    for_sale: true,
    name: "Fountain cake",
    code: "95ecae02-39fd-45d9-bb11-d81dfc7b73ee",
    time_to_bake_in_seconds: 2791,
    created_at: "2016-12-08T23:14:18.764Z",
    updated_at: "2016-12-08T23:14:18.764Z"
  },
  {
    id: 92,
    for_sale: true,
    name: "Funing big cake",
    code: "d7920fd4-8275-49d1-a424-2f1b38e50dc7",
    time_to_bake_in_seconds: 3136,
    created_at: "2016-12-08T23:14:18.768Z",
    updated_at: "2016-12-08T23:14:18.768Z"
  },
  {
    id: 93,
    for_sale: true,
    name: "Genoa cake",
    code: "1e30dec7-d7ac-46bd-8331-37ddd276dd69",
    time_to_bake_in_seconds: 3065,
    created_at: "2016-12-08T23:14:18.773Z",
    updated_at: "2016-12-08T23:14:18.773Z"
  },
  {
    id: 94,
    for_sale: true,
    name: "Genoise Genoese cake",
    code: "e3b0e9d3-5e69-44b3-ad4f-999a9f193779",
    time_to_bake_in_seconds: 3207,
    created_at: "2016-12-08T23:14:18.777Z",
    updated_at: "2016-12-08T23:14:18.777Z"
  },
  {
    id: 95,
    for_sale: true,
    name: "German Chocolate Cake",
    code: "09c293dc-529f-466a-bd23-5b2586402840",
    time_to_bake_in_seconds: 3299,
    created_at: "2016-12-08T23:14:18.781Z",
    updated_at: "2016-12-08T23:14:18.781Z"
  },
  {
    id: 96,
    for_sale: true,
    name: "Gingerbread",
    code: "ebffe878-dd59-4bfc-9ea9-d35ba3a6ee35",
    time_to_bake_in_seconds: 3023,
    created_at: "2016-12-08T23:14:18.786Z",
    updated_at: "2016-12-08T23:14:18.786Z"
  },
  {
    id: 97,
    for_sale: true,
    name: "Goose Breast",
    code: "c4588010-7706-43f9-b162-0d5e391eea34",
    time_to_bake_in_seconds: 3133,
    created_at: "2016-12-08T23:14:18.792Z",
    updated_at: "2016-12-08T23:14:18.792Z"
  },
  {
    id: 98,
    for_sale: true,
    name: "Halloween cake",
    code: "c4c404ff-4841-4ed2-941a-52863e905315",
    time_to_bake_in_seconds: 3037,
    created_at: "2016-12-08T23:14:18.797Z",
    updated_at: "2016-12-08T23:14:18.797Z"
  },
  {
    id: 99,
    for_sale: true,
    name: "Hash brownies",
    code: "6905f8e9-47e9-4969-9469-9ba60d376977",
    time_to_bake_in_seconds: 2821,
    created_at: "2016-12-08T23:14:18.803Z",
    updated_at: "2016-12-08T23:14:18.803Z"
  },
  {
    id: 100,
    for_sale: true,
    name: "Hot milk cake",
    code: "5f8f6546-56b4-4523-8570-9e910e710f6a",
    time_to_bake_in_seconds: 3155,
    created_at: "2016-12-08T23:14:18.809Z",
    updated_at: "2016-12-08T23:14:18.809Z"
  },
  {
    id: 101,
    for_sale: true,
    name: "Ice cream cake",
    code: "ee66ec87-6d00-4d74-9fe3-5c68248858a8",
    time_to_bake_in_seconds: 2955,
    created_at: "2016-12-08T23:14:18.814Z",
    updated_at: "2016-12-08T23:14:18.814Z"
  },
  {
    id: 102,
    for_sale: true,
    name: "Jaffa Cakes",
    code: "74ac12d3-f249-4aa8-811a-a7da0abc103f",
    time_to_bake_in_seconds: 2710,
    created_at: "2016-12-08T23:14:18.822Z",
    updated_at: "2016-12-08T23:14:18.822Z"
  },
  {
    id: 103,
    for_sale: true,
    name: "Kabuni",
    code: "713eb3ad-a29f-45ad-a239-78cd398cf3a4",
    time_to_bake_in_seconds: 2917,
    created_at: "2016-12-08T23:14:18.828Z",
    updated_at: "2016-12-08T23:14:18.828Z"
  },
  {
    id: 104,
    for_sale: true,
    name: "Karpatka",
    code: "cb845be5-3eb5-49a2-9998-04a187a1913b",
    time_to_bake_in_seconds: 3285,
    created_at: "2016-12-08T23:14:18.834Z",
    updated_at: "2016-12-08T23:14:18.834Z"
  },
  {
    id: 105,
    for_sale: true,
    name: "Kiev cake",
    code: "d746fdd3-2bab-4b22-ac39-2ec7fdf84331",
    time_to_bake_in_seconds: 3024,
    created_at: "2016-12-08T23:14:18.839Z",
    updated_at: "2016-12-08T23:14:18.839Z"
  },
  {
    id: 106,
    for_sale: true,
    name: "King cake",
    code: "8416f6c5-9f71-4cf1-bc82-8dc9673d4ad9",
    time_to_bake_in_seconds: 2979,
    created_at: "2016-12-08T23:14:18.843Z",
    updated_at: "2016-12-08T23:14:18.843Z"
  },
  {
    id: 107,
    for_sale: true,
    name: "Kladdkaka",
    code: "b35811e3-c054-4cca-93da-5b0595b35f01",
    time_to_bake_in_seconds: 2832,
    created_at: "2016-12-08T23:14:18.851Z",
    updated_at: "2016-12-08T23:14:18.851Z"
  },
  {
    id: 108,
    for_sale: true,
    name: "Kliņģeris",
    code: "e172cfa2-381d-461a-9c65-bbd88bb4f2ac",
    time_to_bake_in_seconds: 3134,
    created_at: "2016-12-08T23:14:18.859Z",
    updated_at: "2016-12-08T23:14:18.859Z"
  },
  {
    id: 109,
    for_sale: true,
    name: "Kołacz",
    code: "7919e5c0-d74e-4618-bd27-9b9ed34d87ab",
    time_to_bake_in_seconds: 2861,
    created_at: "2016-12-08T23:14:18.865Z",
    updated_at: "2016-12-08T23:14:18.865Z"
  },
  {
    id: 110,
    for_sale: true,
    name: "Kolaczki",
    code: "c9f4f93b-ec07-4f9c-9809-82036f5b90b3",
    time_to_bake_in_seconds: 2718,
    created_at: "2016-12-08T23:14:18.870Z",
    updated_at: "2016-12-08T23:14:18.870Z"
  },
  {
    id: 111,
    for_sale: true,
    name: "Kouign-amann",
    code: "0b15aa67-8e4f-43fa-9878-cdf65e283e09",
    time_to_bake_in_seconds: 3125,
    created_at: "2016-12-08T23:14:18.875Z",
    updated_at: "2016-12-08T23:14:18.875Z"
  },
  {
    id: 112,
    for_sale: true,
    name: "Kutia",
    code: "579d371a-0e0f-4b99-90d3-cf90ec6e9376",
    time_to_bake_in_seconds: 3147,
    created_at: "2016-12-08T23:14:18.880Z",
    updated_at: "2016-12-08T23:14:18.880Z"
  },
  {
    id: 113,
    for_sale: true,
    name: "Kransekake",
    code: "af6c8ad1-3f1b-4159-8aae-18f9169e890d",
    time_to_bake_in_seconds: 2983,
    created_at: "2016-12-08T23:14:18.884Z",
    updated_at: "2016-12-08T23:14:18.884Z"
  },
  {
    id: 114,
    for_sale: true,
    name: "Kremówka",
    code: "5bf4a036-fec0-4271-889d-bff88c54ebe2",
    time_to_bake_in_seconds: 3011,
    created_at: "2016-12-08T23:14:18.891Z",
    updated_at: "2016-12-08T23:14:18.891Z"
  },
  {
    id: 115,
    for_sale: true,
    name: "Krówka",
    code: "6b65ae56-38c4-4c06-b961-8b953b75746a",
    time_to_bake_in_seconds: 2897,
    created_at: "2016-12-08T23:14:18.897Z",
    updated_at: "2016-12-08T23:14:18.897Z"
  },
  {
    id: 116,
    for_sale: true,
    name: "Lady Baltimore cake",
    code: "c02fa588-ede8-4dea-a79e-fd0a0492453f",
    time_to_bake_in_seconds: 3060,
    created_at: "2016-12-08T23:14:18.902Z",
    updated_at: "2016-12-08T23:14:18.902Z"
  },
  {
    id: 117,
    for_sale: true,
    name: "Lamanki or Klamäti",
    code: "4a997a6c-94e5-4b40-b492-743189df5e4f",
    time_to_bake_in_seconds: 3196,
    created_at: "2016-12-08T23:14:18.908Z",
    updated_at: "2016-12-08T23:14:18.908Z"
  },
  {
    id: 118,
    for_sale: true,
    name: "Lamington",
    code: "65be8fb7-9c72-4d3c-bf02-be8c986d8447",
    time_to_bake_in_seconds: 2778,
    created_at: "2016-12-08T23:14:18.914Z",
    updated_at: "2016-12-08T23:14:18.914Z"
  },
  {
    id: 119,
    for_sale: true,
    name: "Layer cake",
    code: "7b4bfa33-46af-4cf2-b41d-30134301f560",
    time_to_bake_in_seconds: 3152,
    created_at: "2016-12-08T23:14:18.918Z",
    updated_at: "2016-12-08T23:14:18.918Z"
  },
  {
    id: 120,
    for_sale: true,
    name: "Lemon cake",
    code: "c305e071-3e45-4a97-90c9-78a4295c5f00",
    time_to_bake_in_seconds: 2900,
    created_at: "2016-12-08T23:14:18.923Z",
    updated_at: "2016-12-08T23:14:18.923Z"
  },
  {
    id: 121,
    for_sale: true,
    name: "Madeira cake",
    code: "842f8648-7d82-4d55-ae2a-49bf12b69b3e",
    time_to_bake_in_seconds: 2918,
    created_at: "2016-12-08T23:14:18.927Z",
    updated_at: "2016-12-08T23:14:18.927Z"
  },
  {
    id: 122,
    for_sale: true,
    name: "Makowiec",
    code: "f3119d1d-dc8f-470b-9e5f-8d54bf6840c1",
    time_to_bake_in_seconds: 2838,
    created_at: "2016-12-08T23:14:18.932Z",
    updated_at: "2016-12-08T23:14:18.932Z"
  },
  {
    id: 123,
    for_sale: true,
    name: "Magdalena",
    code: "43f11363-1562-46e5-afea-03419d99c3a2",
    time_to_bake_in_seconds: 2895,
    created_at: "2016-12-08T23:14:18.937Z",
    updated_at: "2016-12-08T23:14:18.937Z"
  },
  {
    id: 124,
    for_sale: true,
    name: "Mantecada",
    code: "6f4205b4-a62d-4bc4-9ee8-b78219071e75",
    time_to_bake_in_seconds: 2732,
    created_at: "2016-12-08T23:14:18.941Z",
    updated_at: "2016-12-08T23:14:18.941Z"
  },
  {
    id: 125,
    for_sale: true,
    name: "Marble cake",
    code: "1d99d782-382c-4012-b2a6-73df2dcf80a1",
    time_to_bake_in_seconds: 2906,
    created_at: "2016-12-08T23:14:18.945Z",
    updated_at: "2016-12-08T23:14:18.945Z"
  },
  {
    id: 126,
    for_sale: true,
    name: "Mazurek",
    code: "e70622a7-d4f0-4af0-802e-b46187ff46f0",
    time_to_bake_in_seconds: 3287,
    created_at: "2016-12-08T23:14:18.950Z",
    updated_at: "2016-12-08T23:14:18.950Z"
  },
  {
    id: 127,
    for_sale: true,
    name: "Merveilleux",
    code: "de07ef37-70f9-4528-bebf-4fbcc1f2dbdb",
    time_to_bake_in_seconds: 2905,
    created_at: "2016-12-08T23:14:18.954Z",
    updated_at: "2016-12-08T23:14:18.954Z"
  },
  {
    id: 128,
    for_sale: true,
    name: "Mille-feuille",
    code: "3b68c32d-2dc5-43b1-b195-ab968a29ab88",
    time_to_bake_in_seconds: 2765,
    created_at: "2016-12-08T23:14:18.958Z",
    updated_at: "2016-12-08T23:14:18.958Z"
  },
  {
    id: 129,
    for_sale: true,
    name: "Misérable cake",
    code: "5871146c-1ca6-4639-8ffe-147f9f588131",
    time_to_bake_in_seconds: 2840,
    created_at: "2016-12-08T23:14:18.962Z",
    updated_at: "2016-12-08T23:14:18.962Z"
  },
  {
    id: 130,
    for_sale: true,
    name: "Molten chocolate cake",
    code: "1a5b123e-8b3f-43b9-a121-4aae3a376f76",
    time_to_bake_in_seconds: 3071,
    created_at: "2016-12-08T23:14:18.967Z",
    updated_at: "2016-12-08T23:14:18.967Z"
  },
  {
    id: 131,
    for_sale: true,
    name: "Mooncake",
    code: "074e071d-25bb-4fd8-aa3e-7eaaabaf8e01",
    time_to_bake_in_seconds: 2732,
    created_at: "2016-12-08T23:14:18.971Z",
    updated_at: "2016-12-08T23:14:18.971Z"
  },
  {
    id: 132,
    for_sale: true,
    name: "Muffin",
    code: "edff5940-2aa7-497b-a0f9-70caffcf1db7",
    time_to_bake_in_seconds: 2736,
    created_at: "2016-12-08T23:14:18.975Z",
    updated_at: "2016-12-08T23:14:18.975Z"
  },
  {
    id: 133,
    for_sale: true,
    name: "Napoleonshat",
    code: "dc7e35e6-fd85-4ce4-9b4f-635996870352",
    time_to_bake_in_seconds: 2729,
    created_at: "2016-12-08T23:14:18.980Z",
    updated_at: "2016-12-08T23:14:18.980Z"
  },
  {
    id: 134,
    for_sale: true,
    name: "Napeleonskake",
    code: "6b1c783b-5c1c-4628-a74f-1639e729a332",
    time_to_bake_in_seconds: 2984,
    created_at: "2016-12-08T23:14:18.984Z",
    updated_at: "2016-12-08T23:14:18.984Z"
  },
  {
    id: 135,
    for_sale: true,
    name: "Nasturtium cake",
    code: "61488978-7e6a-4ed5-b622-2a202e286fe6",
    time_to_bake_in_seconds: 3049,
    created_at: "2016-12-08T23:14:18.988Z",
    updated_at: "2016-12-08T23:14:18.988Z"
  },
  {
    id: 136,
    for_sale: true,
    name: "Onion cake",
    code: "aa186045-080a-4e20-851c-4750bbedb234",
    time_to_bake_in_seconds: 3056,
    created_at: "2016-12-08T23:14:18.992Z",
    updated_at: "2016-12-08T23:14:18.992Z"
  },
  {
    id: 137,
    for_sale: true,
    name: "Oponki or Pączki",
    code: "5b334402-dcd8-45b5-97d7-5403a5579e7d",
    time_to_bake_in_seconds: 3224,
    created_at: "2016-12-08T23:14:18.996Z",
    updated_at: "2016-12-08T23:14:18.996Z"
  },
  {
    id: 138,
    for_sale: true,
    name: "Opera cake",
    code: "829e5264-8c61-4fac-8192-d9397014fddb",
    time_to_bake_in_seconds: 2955,
    created_at: "2016-12-08T23:14:19.000Z",
    updated_at: "2016-12-08T23:14:19.000Z"
  },
  {
    id: 139,
    for_sale: true,
    name: "Orange and polenta cake",
    code: "359ac9f6-8441-4c1a-8940-2ce8d12b3e6e",
    time_to_bake_in_seconds: 3238,
    created_at: "2016-12-08T23:14:19.005Z",
    updated_at: "2016-12-08T23:14:19.005Z"
  },
  {
    id: 140,
    for_sale: true,
    name: "Othellolagkage",
    code: "6e9a4bff-c2cd-4588-a691-74a38b5077df",
    time_to_bake_in_seconds: 3229,
    created_at: "2016-12-08T23:14:19.009Z",
    updated_at: "2016-12-08T23:14:19.009Z"
  },
  {
    id: 141,
    for_sale: true,
    name: "Pan di Spagna",
    code: "ef2759a4-1fee-4e9e-a60f-43fd4bf63507",
    time_to_bake_in_seconds: 2880,
    created_at: "2016-12-08T23:14:19.013Z",
    updated_at: "2016-12-08T23:14:19.013Z"
  },
  {
    id: 142,
    for_sale: true,
    name: "Pancake",
    code: "1cc5d744-b311-40a4-9fd6-ebed1fdbad97",
    time_to_bake_in_seconds: 2853,
    created_at: "2016-12-08T23:14:19.017Z",
    updated_at: "2016-12-08T23:14:19.017Z"
  },
  {
    id: 143,
    for_sale: true,
    name: "Panpepato",
    code: "357256e5-8188-4986-b0a9-9117fb872d9c",
    time_to_bake_in_seconds: 2795,
    created_at: "2016-12-08T23:14:19.025Z",
    updated_at: "2016-12-08T23:14:19.025Z"
  },
  {
    id: 144,
    for_sale: true,
    name: "Panettone",
    code: "048044f4-d58f-4ac9-8f8f-f4717982ac01",
    time_to_bake_in_seconds: 2705,
    created_at: "2016-12-08T23:14:19.030Z",
    updated_at: "2016-12-08T23:14:19.030Z"
  },
  {
    id: 145,
    for_sale: true,
    name: "Parkin",
    code: "cd4c8c20-8ed1-4c4c-9670-816fe2540c62",
    time_to_bake_in_seconds: 2802,
    created_at: "2016-12-08T23:14:19.036Z",
    updated_at: "2016-12-08T23:14:19.036Z"
  },
  {
    id: 146,
    for_sale: true,
    name: "Pavlova",
    code: "306280ea-2392-4ed9-a0c2-3c854c8948ac",
    time_to_bake_in_seconds: 2903,
    created_at: "2016-12-08T23:14:19.042Z",
    updated_at: "2016-12-08T23:14:19.042Z"
  },
  {
    id: 147,
    for_sale: true,
    name: "Petit Gâteau",
    code: "b008a097-98db-40f9-98d0-3940a265bcb8",
    time_to_bake_in_seconds: 3094,
    created_at: "2016-12-08T23:14:19.047Z",
    updated_at: "2016-12-08T23:14:19.047Z"
  },
  {
    id: 148,
    for_sale: true,
    name: "Petits fours",
    code: "0ec9767d-75fb-47f0-8d4e-21eb100a27bb",
    time_to_bake_in_seconds: 3281,
    created_at: "2016-12-08T23:14:19.051Z",
    updated_at: "2016-12-08T23:14:19.051Z"
  },
  {
    id: 149,
    for_sale: true,
    name: "Piernik",
    code: "8e2186e8-dfa0-4880-9d5a-fc1bd2039e24",
    time_to_bake_in_seconds: 3165,
    created_at: "2016-12-08T23:14:19.055Z",
    updated_at: "2016-12-08T23:14:19.055Z"
  },
  {
    id: 150,
    for_sale: true,
    name: "Plum cake",
    code: "41ec02f7-f625-4ce8-9227-cec4e7587d1b",
    time_to_bake_in_seconds: 2904,
    created_at: "2016-12-08T23:14:19.060Z",
    updated_at: "2016-12-08T23:14:19.060Z"
  },
  {
    id: 151,
    for_sale: true,
    name: "Pound cake",
    code: "f0354738-2ebf-4454-ba72-8c5bb2088ce7",
    time_to_bake_in_seconds: 2789,
    created_at: "2016-12-08T23:14:19.064Z",
    updated_at: "2016-12-08T23:14:19.064Z"
  },
  {
    id: 152,
    for_sale: true,
    name: "Princess cake",
    code: "47d6a939-85be-42b5-98bc-24391e33fc9a",
    time_to_bake_in_seconds: 2962,
    created_at: "2016-12-08T23:14:19.069Z",
    updated_at: "2016-12-08T23:14:19.069Z"
  },
  {
    id: 153,
    for_sale: true,
    name: "Prinzregententorte",
    code: "6ce2927d-7e5e-4d8d-bd5d-eac1ec5f9dcf",
    time_to_bake_in_seconds: 2941,
    created_at: "2016-12-08T23:14:19.074Z",
    updated_at: "2016-12-08T23:14:19.074Z"
  },
  {
    id: 154,
    for_sale: true,
    name: "Pumpkin bread",
    code: "dd9098ab-3021-4d6d-93c6-cfe8d40da773",
    time_to_bake_in_seconds: 2956,
    created_at: "2016-12-08T23:14:19.078Z",
    updated_at: "2016-12-08T23:14:19.078Z"
  },
  {
    id: 155,
    for_sale: true,
    name: "Punschkrapfen",
    code: "b5bfecf9-0c04-4f4a-b6f4-ed8252f0767e",
    time_to_bake_in_seconds: 2774,
    created_at: "2016-12-08T23:14:19.083Z",
    updated_at: "2016-12-08T23:14:19.083Z"
  },
  {
    id: 156,
    for_sale: true,
    name: "Queen Elizabeth cake",
    code: "cdd21106-deb7-4a9c-8689-e51c496a887b",
    time_to_bake_in_seconds: 3285,
    created_at: "2016-12-08T23:14:19.087Z",
    updated_at: "2016-12-08T23:14:19.087Z"
  },
  {
    id: 157,
    for_sale: true,
    name: "Qumeshtore me pete",
    code: "358354f0-c58e-4a56-a556-ab5cccd35496",
    time_to_bake_in_seconds: 2944,
    created_at: "2016-12-08T23:14:19.092Z",
    updated_at: "2016-12-08T23:14:19.092Z"
  },
  {
    id: 158,
    for_sale: true,
    name: "Red bean cake",
    code: "0b2e1ecf-48d5-4534-8f84-19b9021dfcf3",
    time_to_bake_in_seconds: 2887,
    created_at: "2016-12-08T23:14:19.096Z",
    updated_at: "2016-12-08T23:14:19.096Z"
  },
  {
    id: 159,
    for_sale: true,
    name: "Red velvet cake",
    code: "46d1273d-c9ea-480b-8961-c68bb6a04417",
    time_to_bake_in_seconds: 3108,
    created_at: "2016-12-08T23:14:19.100Z",
    updated_at: "2016-12-08T23:14:19.100Z"
  },
  {
    id: 160,
    for_sale: true,
    name: "Rum cake",
    code: "fa78c998-05fa-430a-99cf-9f3c482b2b44",
    time_to_bake_in_seconds: 2949,
    created_at: "2016-12-08T23:14:19.105Z",
    updated_at: "2016-12-08T23:14:19.105Z"
  },
  {
    id: 161,
    for_sale: true,
    name: "Rum baba",
    code: "50630135-0852-4d8c-be42-767f73582b4b",
    time_to_bake_in_seconds: 2969,
    created_at: "2016-12-08T23:14:19.110Z",
    updated_at: "2016-12-08T23:14:19.110Z"
  },
  {
    id: 162,
    for_sale: true,
    name: "Ruske kape",
    code: "cd9a3949-43ac-4264-bf90-433a7d912b60",
    time_to_bake_in_seconds: 3003,
    created_at: "2016-12-08T23:14:19.114Z",
    updated_at: "2016-12-08T23:14:19.114Z"
  },
  {
    id: 163,
    for_sale: true,
    name: "Sachertorte",
    code: "8453ccdf-af86-4ebd-98ac-af5c0cc60e49",
    time_to_bake_in_seconds: 3135,
    created_at: "2016-12-08T23:14:19.119Z",
    updated_at: "2016-12-08T23:14:19.119Z"
  },
  {
    id: 164,
    for_sale: true,
    name: "Šakotis",
    code: "c3c2bde4-e727-4ef8-9ab3-e3e8e39f66e4",
    time_to_bake_in_seconds: 2700,
    created_at: "2016-12-08T23:14:19.124Z",
    updated_at: "2016-12-08T23:14:19.124Z"
  },
  {
    id: 165,
    for_sale: true,
    name: "Salzburger Nockerl",
    code: "00965cb4-3866-480a-b25f-0aa1ec682f0d",
    time_to_bake_in_seconds: 3241,
    created_at: "2016-12-08T23:14:19.130Z",
    updated_at: "2016-12-08T23:14:19.130Z"
  },
  {
    id: 166,
    for_sale: true,
    name: "Sekacz",
    code: "4eef7891-6b4a-4420-bc3e-da8dbee2b722",
    time_to_bake_in_seconds: 3285,
    created_at: "2016-12-08T23:14:19.146Z",
    updated_at: "2016-12-08T23:14:19.146Z"
  },
  {
    id: 167,
    for_sale: true,
    name: "Sernik",
    code: "85c3f392-b870-497b-997b-9be955b27a97",
    time_to_bake_in_seconds: 3273,
    created_at: "2016-12-08T23:14:19.152Z",
    updated_at: "2016-12-08T23:14:19.152Z"
  },
  {
    id: 168,
    for_sale: true,
    name: "Sesame seed cake",
    code: "fcabe089-ea55-4452-8ad9-0dd3936362a4",
    time_to_bake_in_seconds: 2790,
    created_at: "2016-12-08T23:14:19.157Z",
    updated_at: "2016-12-08T23:14:19.157Z"
  },
  {
    id: 169,
    for_sale: true,
    name: "Sfouf",
    code: "e256f4d3-6332-4736-bc0b-b2383a31dfb8",
    time_to_bake_in_seconds: 3198,
    created_at: "2016-12-08T23:14:19.162Z",
    updated_at: "2016-12-08T23:14:19.162Z"
  },
  {
    id: 170,
    for_sale: true,
    name: "Simnel cake",
    code: "6e995e5d-0753-462c-8f22-905015c28645",
    time_to_bake_in_seconds: 2888,
    created_at: "2016-12-08T23:14:19.167Z",
    updated_at: "2016-12-08T23:14:19.167Z"
  },
  {
    id: 171,
    for_sale: true,
    name: "Smoked salmon cheesecake",
    code: "328c0c76-17dd-4ceb-ba8b-e2525c23d960",
    time_to_bake_in_seconds: 2725,
    created_at: "2016-12-08T23:14:19.172Z",
    updated_at: "2016-12-08T23:14:19.172Z"
  },
  {
    id: 172,
    for_sale: true,
    name: "Smörgåstårta",
    code: "eb1ab0b7-a57c-4a2d-9278-3949ab78ef9b",
    time_to_bake_in_seconds: 3232,
    created_at: "2016-12-08T23:14:19.176Z",
    updated_at: "2016-12-08T23:14:19.176Z"
  },
  {
    id: 173,
    for_sale: true,
    name: "Snowball cake",
    code: "e67f1bf0-8aef-487d-ac6d-c144fa9f2fb8",
    time_to_bake_in_seconds: 2927,
    created_at: "2016-12-08T23:14:19.180Z",
    updated_at: "2016-12-08T23:14:19.180Z"
  },
  {
    id: 174,
    for_sale: true,
    name: "Snow skin mooncake",
    code: "623987d0-c60b-47c0-83ef-63f3dcdce55e",
    time_to_bake_in_seconds: 2909,
    created_at: "2016-12-08T23:14:19.184Z",
    updated_at: "2016-12-08T23:14:19.184Z"
  },
  {
    id: 175,
    for_sale: true,
    name: "Soufflé",
    code: "08f11fed-9577-4fa0-9df0-8f137188aba9",
    time_to_bake_in_seconds: 3179,
    created_at: "2016-12-08T23:14:19.188Z",
    updated_at: "2016-12-08T23:14:19.188Z"
  },
  {
    id: 176,
    for_sale: true,
    name: "Spekkoek",
    code: "6cb49a78-bd49-4741-ac14-0a883cb33c19",
    time_to_bake_in_seconds: 2745,
    created_at: "2016-12-08T23:14:19.192Z",
    updated_at: "2016-12-08T23:14:19.192Z"
  },
  {
    id: 177,
    for_sale: true,
    name: "Spice cake",
    code: "5dc08ed1-2f62-4085-89b1-105443d5fda1",
    time_to_bake_in_seconds: 3025,
    created_at: "2016-12-08T23:14:19.197Z",
    updated_at: "2016-12-08T23:14:19.197Z"
  },
  {
    id: 178,
    for_sale: true,
    name: "Spit cake",
    code: "4f1612f7-f4e0-4068-95d5-ca489b015d6d",
    time_to_bake_in_seconds: 3154,
    created_at: "2016-12-08T23:14:19.201Z",
    updated_at: "2016-12-08T23:14:19.201Z"
  },
  {
    id: 179,
    for_sale: true,
    name: "Sponge cake",
    code: "9025b107-898d-4eeb-83d3-1bd9c1ee6fae",
    time_to_bake_in_seconds: 3159,
    created_at: "2016-12-08T23:14:19.206Z",
    updated_at: "2016-12-08T23:14:19.206Z"
  },
  {
    id: 180,
    for_sale: true,
    name: "St. Honoré cake",
    code: "0785a074-6705-4c4c-b510-baf362ec6dbf",
    time_to_bake_in_seconds: 2994,
    created_at: "2016-12-08T23:14:19.210Z",
    updated_at: "2016-12-08T23:14:19.210Z"
  },
  {
    id: 181,
    for_sale: true,
    name: "Stack cake",
    code: "440f7f2a-7800-4b23-8fbd-a4b3a3f97874",
    time_to_bake_in_seconds: 2769,
    created_at: "2016-12-08T23:14:19.214Z",
    updated_at: "2016-12-08T23:14:19.214Z"
  },
  {
    id: 182,
    for_sale: true,
    name: "Strawberry cake",
    code: "f413ce8d-9fbb-47db-9b65-1dd62ac54ce5",
    time_to_bake_in_seconds: 3094,
    created_at: "2016-12-08T23:14:19.218Z",
    updated_at: "2016-12-08T23:14:19.218Z"
  },
  {
    id: 183,
    for_sale: true,
    name: "Streuselkuchen",
    code: "bb02152d-2509-4c28-b6d7-2986d3621d99",
    time_to_bake_in_seconds: 2861,
    created_at: "2016-12-08T23:14:19.223Z",
    updated_at: "2016-12-08T23:14:19.223Z"
  },
  {
    id: 184,
    for_sale: true,
    name: "Studenterbrød",
    code: "a1fdbe61-6d1a-4cb7-bc14-9c72dab3665c",
    time_to_bake_in_seconds: 3195,
    created_at: "2016-12-08T23:14:19.227Z",
    updated_at: "2016-12-08T23:14:19.227Z"
  },
  {
    id: 185,
    for_sale: true,
    name: "Sultana and cherry cake",
    code: "91e520aa-dc55-4322-bfcd-60426012f31d",
    time_to_bake_in_seconds: 2732,
    created_at: "2016-12-08T23:14:19.232Z",
    updated_at: "2016-12-08T23:14:19.232Z"
  },
  {
    id: 186,
    for_sale: true,
    name: "Suncake",
    code: "30cc25ca-afda-4fc4-87ce-0f38224b7109",
    time_to_bake_in_seconds: 3070,
    created_at: "2016-12-08T23:14:19.236Z",
    updated_at: "2016-12-08T23:14:19.236Z"
  },
  {
    id: 187,
    for_sale: true,
    name: "Swiss roll",
    code: "b9959ff7-8fa4-4e10-9bec-b75855d2f39c",
    time_to_bake_in_seconds: 2720,
    created_at: "2016-12-08T23:14:19.240Z",
    updated_at: "2016-12-08T23:14:19.240Z"
  },
  {
    id: 188,
    for_sale: true,
    name: "Tarte Tatin",
    code: "d476eaa4-c5ed-4711-889e-fb7b02b226d9",
    time_to_bake_in_seconds: 2886,
    created_at: "2016-12-08T23:14:19.245Z",
    updated_at: "2016-12-08T23:14:19.245Z"
  },
  {
    id: 189,
    for_sale: true,
    name: "Tea loaf",
    code: "51f23437-0022-424e-9aaf-4d360116aa81",
    time_to_bake_in_seconds: 2756,
    created_at: "2016-12-08T23:14:19.249Z",
    updated_at: "2016-12-08T23:14:19.249Z"
  },
  {
    id: 190,
    for_sale: true,
    name: "Teacake",
    code: "b6f7f643-89f0-4583-9bf4-42574de2f7a4",
    time_to_bake_in_seconds: 2909,
    created_at: "2016-12-08T23:14:19.254Z",
    updated_at: "2016-12-08T23:14:19.254Z"
  },
  {
    id: 191,
    for_sale: true,
    name: "Tiramisu",
    code: "db066423-6a47-48f1-ab38-b6915b0e7f29",
    time_to_bake_in_seconds: 2983,
    created_at: "2016-12-08T23:14:19.258Z",
    updated_at: "2016-12-08T23:14:19.258Z"
  },
  {
    id: 192,
    for_sale: true,
    name: "Tompouce",
    code: "8ebf3b62-896b-4f10-b311-61e4ce7e0d92",
    time_to_bake_in_seconds: 3187,
    created_at: "2016-12-08T23:14:19.262Z",
    updated_at: "2016-12-08T23:14:19.262Z"
  },
  {
    id: 193,
    for_sale: true,
    name: "Torta Tre Monti",
    code: "3d2fb017-e130-45c6-bd09-06482a98a072",
    time_to_bake_in_seconds: 2980,
    created_at: "2016-12-08T23:14:19.267Z",
    updated_at: "2016-12-08T23:14:19.267Z"
  },
  {
    id: 194,
    for_sale: true,
    name: "Tres leches cake",
    code: "1d7f9880-4cbe-45e4-857a-42cee41133c1",
    time_to_bake_in_seconds: 3066,
    created_at: "2016-12-08T23:14:19.271Z",
    updated_at: "2016-12-08T23:14:19.271Z"
  },
  {
    id: 195,
    for_sale: true,
    name: "Tunis cake",
    code: "ea0982ba-1aad-4c43-8bfe-520295e6b15b",
    time_to_bake_in_seconds: 2892,
    created_at: "2016-12-08T23:14:19.275Z",
    updated_at: "2016-12-08T23:14:19.275Z"
  },
  {
    id: 196,
    for_sale: true,
    name: "Træstammer",
    code: "7eff876a-fa88-4466-b9c6-b6d559060fab",
    time_to_bake_in_seconds: 3137,
    created_at: "2016-12-08T23:14:19.279Z",
    updated_at: "2016-12-08T23:14:19.279Z"
  },
  {
    id: 197,
    for_sale: true,
    name: "Upside-down cake",
    code: "3cb2ce7d-b077-4b74-9ca7-82e4fea41463",
    time_to_bake_in_seconds: 3140,
    created_at: "2016-12-08T23:14:19.284Z",
    updated_at: "2016-12-08T23:14:19.284Z"
  },
  {
    id: 198,
    for_sale: true,
    name: "Victoria sponge cake",
    code: "fdadeb4e-437b-42ae-ac08-934f928794a8",
    time_to_bake_in_seconds: 3083,
    created_at: "2016-12-08T23:14:19.288Z",
    updated_at: "2016-12-08T23:14:19.288Z"
  },
  {
    id: 199,
    for_sale: true,
    name: "Vínarterta",
    code: "acadced3-d79c-4edb-9cb5-212367ad8001",
    time_to_bake_in_seconds: 2973,
    created_at: "2016-12-08T23:14:19.292Z",
    updated_at: "2016-12-08T23:14:19.292Z"
  },
  {
    id: 200,
    for_sale: true,
    name: "Wedding cake",
    code: "be455de7-5ef4-4747-9f2f-6da5d8701a25",
    time_to_bake_in_seconds: 2819,
    created_at: "2016-12-08T23:14:19.296Z",
    updated_at: "2016-12-08T23:14:19.296Z"
  },
  {
    id: 201,
    for_sale: true,
    name: "Welsh cake",
    code: "32130f2f-5baa-4954-b1cb-d78a2bb459dd",
    time_to_bake_in_seconds: 3265,
    created_at: "2016-12-08T23:14:19.301Z",
    updated_at: "2016-12-08T23:14:19.301Z"
  },
  {
    id: 202,
    for_sale: true,
    name: "Whoopie pies",
    code: "7b05c87a-58e5-4634-8bf6-f9f89c154515",
    time_to_bake_in_seconds: 3189,
    created_at: "2016-12-08T23:14:19.305Z",
    updated_at: "2016-12-08T23:14:19.305Z"
  },
  {
    id: 203,
    for_sale: true,
    name: "Wine cake",
    code: "3a719c54-0d7b-4128-bd0f-280930e69dd9",
    time_to_bake_in_seconds: 2776,
    created_at: "2016-12-08T23:14:19.309Z",
    updated_at: "2016-12-08T23:14:19.309Z"
  }
]

products.each do |product|
  Product.create(
    api_id: product[:code],
    name: product[:name],
    for_sale: product[:for_sale],
    time_to_bake_in_seconds: product[:time_to_bake_in_seconds]
  )
end
