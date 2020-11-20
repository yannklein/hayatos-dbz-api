puts 'Clearing database'
Character.destroy_all
Planet.destroy_all
puts 'Database Cleared'

if Rails.env.development?
  url_prefix = 'localhost:3000/api/v1'
elsif Rails.env.production?
  url_prefix = 'https://dragonball-wiki-api.herokuapp.com/api/v1'
end

puts '#### Creating planets and characters ######'

planet_vegeta = Planet.create(
  name: 'Planet Vegeta',
  url: 'url_placeholder',
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858749/dragonball-wiki-api/Planets/Planet_Vegeta_oyajmw.png'
)
earth = Planet.create(
  name: 'Earth',
  url: 'url_placeholder',
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858749/dragonball-wiki-api/Planets/Earth_hglvfm.png'
)
namek = Planet.create(
  name: 'Namek',
  url: 'url_placeholder',
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858748/dragonball-wiki-api/Planets/Namek_xtyloj.png'
)
kai_world = Planet.create(
  name: 'Sacred World of the Kais',
  url: 'url_placeholder',
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858748/dragonball-wiki-api/Planets/Sacred_World_of_the_Kais_jniyqn.png'
)
unknown_planet = Planet.create(
  name: 'Unknown Planet',
  url: 'url_placeholder',
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858746/dragonball-wiki-api/Planets/Unknown_poomss.png'
)
beerus_planet = Planet.create(
  name: 'Beerus\' Planet',
  url: 'url_placeholder',
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858759/dragonball-wiki-api/Planets/Beerus_Planet_vbrubv.png'
)

Planet.all.each do |planet|
  planet.update(url: "#{url_prefix}/planets/#{planet.id}")
end

# ---------------- PLANET VEGETA CHARACTERS -----------------
Character.create(
  name: 'Bardock',
  status: 'Dead',
  species: 'Saiyan',
  series: 'Z',
  gender: 'Male',
  url: 'url_placeholder',
  planet: planet_vegeta,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858841/dragonball-wiki-api/Characters/Bardock_ymq9sy.png'
)

Character.create(
  name: 'Raditz',
  status: 'Dead',
  species: 'Saiyan',
  series: 'Z',
  gender: 'Male',
  url: 'url_placeholder',
  planet: planet_vegeta,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858855/dragonball-wiki-api/Characters/Raditz_l4efuy.png'
)

Character.create(
  name: 'Cumber',
  status: 'Alive',
  species: 'Saiyan',
  series: 'Super Dragon Ball Heroes',
  gender: 'Male',
  url: 'url_placeholder',
  planet: planet_vegeta,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858860/dragonball-wiki-api/Characters/Cumber_aawiu3.png'
)

Character.create(
  name: 'Broly',
  status: 'Dead',
  species: 'Saiyan',
  series: 'Z',
  gender: 'Male',
  url: 'url_placeholder',
  planet: planet_vegeta,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858859/dragonball-wiki-api/Characters/Broly_mcwaei.png'
)

Character.create(
  name: 'Nappa',
  status: 'Dead',
  species: 'Saiyan',
  series: 'Z',
  gender: 'Male',
  url: 'url_placeholder',
  planet: planet_vegeta,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858859/dragonball-wiki-api/Characters/Broly_mcwaei.png'
)

Character.create(
  name: 'Goku',
  status: 'Alive',
  species: 'Saiyan',
  series: 'Dragon Ball',
  gender: 'Male',
  url: 'url_placeholder',
  planet: planet_vegeta,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858864/dragonball-wiki-api/Characters/Goku_o43cfj.png'
)

Character.create(
  name: 'Vegeta',
  status: 'Alive',
  species: 'Saiyan',
  series: 'Z',
  gender: 'Male',
  url: 'url_placeholder',
  planet: planet_vegeta,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858866/dragonball-wiki-api/Characters/Vegeta_nqotjh.png'
)

# ---------------- EARTH CHARACTERS -----------------
Character.create(
  name: 'Android 18',
  status: 'Alive',
  species: 'Android',
  series: 'Z',
  gender: 'Female',
  url: 'url_placeholder',
  planet: earth,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858839/dragonball-wiki-api/Characters/Android_18_nxanll.png'
)

Character.create(
  name: 'Android 17',
  status: 'Dead',
  species: 'Android',
  series: 'Z',
  gender: 'Male',
  url: 'url_placeholder',
  planet: earth,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858841/dragonball-wiki-api/Characters/Android_17_k6sj3r.png'
)

Character.create(
  name: 'Bulma',
  status: 'Alive',
  species: 'Human',
  series: 'Dragon Ball',
  gender: 'Female',
  url: 'url_placeholder',
  planet: earth,
  image: 'img_placeholder'
)
Character.create(
  name: 'Krillin',
  status: 'Alive',
  species: 'Human',
  series: 'Dragon Ball',
  gender: 'Male',
  url: 'url_placeholder',
  planet: earth,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858845/dragonball-wiki-api/Characters/Krillin_lapkg1.png'
)

Character.create(
  name: 'Gohan',
  status: 'Alive',
  species: 'Saiyan/Human',
  series: 'Z',
  gender: 'Male',
  url: 'url_placeholder',
  planet: earth,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858863/dragonball-wiki-api/Characters/Gohan_uf2pqq.png'
)

Character.create(
  name: 'Trunks',
  status: 'Alive',
  species: 'Saiyan/Human',
  series: 'Z',
  gender: 'Male',
  url: 'url_placeholder',
  planet: earth,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858857/dragonball-wiki-api/Characters/Trunks_nlda9c.png'
)

Character.create(
  name: 'Yamcha',
  status: 'Dead',
  species: 'Human',
  series: 'Dragon Ball',
  gender: 'Male',
  url: 'url_placeholder',
  planet: earth,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858858/dragonball-wiki-api/Characters/Yamcha_kfl7t5.png'
)

Character.create(
  name: 'Tien',
  status: 'Dead',
  species: 'Human/Triclops',
  series: 'Dragon Ball',
  gender: 'Male',
  url: 'url_placeholder',
  planet: earth,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858856/dragonball-wiki-api/Characters/Tien_w2rnkf.png'
)


Character.create(
  name: 'Goten',
  status: 'Alive',
  species: 'Saiyan/Human',
  series: 'Z',
  gender: 'Male',
  url: 'url_placeholder',
  planet: earth,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858863/dragonball-wiki-api/Characters/Goten_b89ex8.png'
)

Character.create(
  name: 'Pan',
  status: 'Alive',
  species: 'Saiyan/Human',
  series: 'Z',
  gender: 'Female',
  url: 'url_placeholder',
  planet: earth,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858851/dragonball-wiki-api/Characters/Pan_fhmk1w.png'
)

Character.create(
  name: 'Cell',
  status: 'Alive',
  species: 'Bio-Android',
  series: 'Z',
  gender: 'Male',
  url: 'url_placeholder',
  planet: earth,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858861/dragonball-wiki-api/Characters/Cell_pwaa8t.png'
)

Character.create(
  name: 'Chi Chi',
  status: 'Alive',
  species: 'Human',
  series: 'Dragon Ball',
  gender: 'Female',
  url: 'url_placeholder',
  planet: earth,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858841/dragonball-wiki-api/Characters/Chi_Chi_trah1o.png'
)

Character.create(
  name: 'Android 16',
  status: 'Dead',
  species: 'Android',
  series: 'Z',
  gender: 'Male',
  url: 'url_placeholder',
  planet: earth,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858858/dragonball-wiki-api/Characters/Android_16_xjzjuz.png'
)

Character.create(
  name: 'Master Roshi',
  status: 'Alive',
  species: 'Human',
  series: 'Z',
  gender: 'Male',
  url: 'url_placeholder',
  planet: earth,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858854/dragonball-wiki-api/Characters/Master_Roshi_jzfpry.png'
)

Character.create(
  name: 'Shenron',
  status: 'Dragon Ball',
  species: 'Eternal Dragon',
  series: 'Z',
  gender: 'Male',
  url: 'url_placeholder',
  planet: earth,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858856/dragonball-wiki-api/Characters/Shenron_regzd2.png'
)

Character.create(
  name: 'Videl',
  status: 'Alive',
  species: 'Human',
  series: 'Z',
  gender: 'Female',
  url: 'url_placeholder',
  planet: earth,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858861/dragonball-wiki-api/Characters/Videl_tzxzmd.png'
)

Character.create(
  name: 'Dr. Gero',
  status: 'Dead',
  species: 'Android',
  series: 'Z',
  gender: 'Male',
  url: 'url_placeholder',
  planet: earth,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858846/dragonball-wiki-api/Characters/Dr_Gero_drnk1d.png'
)

Character.create(
  name: 'Oolong',
  status: 'Alive',
  species: 'Pig',
  series: 'Dragon Ball',
  gender: 'Male',
  url: 'url_placeholder',
  planet: earth,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858852/dragonball-wiki-api/Characters/Oolong_ddxevn.png'
)

Character.create(
  name: 'Puar',
  status: 'Alive',
  species: 'Cat',
  series: 'Dragon Ball',
  gender: 'Male',
  url: 'url_placeholder',
  planet: earth,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858853/dragonball-wiki-api/Characters/Puar_kfiqi2.png'
)

Character.create(
  name: 'Chiaotzu',
  status: 'Dead',
  species: 'Human',
  series: 'Dragon Ball',
  gender: 'Male',
  url: 'url_placeholder',
  planet: earth,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858850/dragonball-wiki-api/Characters/Chiaotzu_rbeleo.png'
)

Character.create(
  name: 'Hercule Satan',
  status: 'Alive',
  species: 'Human',
  series: 'Z',
  gender: 'Male',
  url: 'url_placeholder',
  planet: earth,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858846/dragonball-wiki-api/Characters/Hercule_Satan_wm8m0e.png'
)

# ---------------- NAMEKIAN CHARACTERS -----------------
Character.create(
  name: 'Piccolo',
  status: 'Alive',
  species: 'Demonic Namekian',
  series: 'Dragon Ball',
  gender: 'Male',
  url: 'url_placeholder',
  planet: namek,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858858/dragonball-wiki-api/Characters/Piccolo_aydsdr.png'
)

Character.create(
  name: 'Dende',
  status: 'Alive',
  species: 'Namekian',
  series: 'Z',
  gender: 'Male',
  url: 'url_placeholder',
  planet: namek,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858852/dragonball-wiki-api/Characters/Dende_fahkag.png'
)

# ---------------- UNKNOWN PLANET CHARACTERS -----------------
Character.create(
  name: 'Frieza',
  status: 'Dead',
  species: 'Unknown',
  series: 'Z',
  gender: 'Male',
  url: 'url_placeholder',
  planet: unknown_planet,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858860/dragonball-wiki-api/Characters/Frieza_zd8snk.png'
)

Character.create(
  name: 'Captain Ginyu',
  status: 'Dead',
  species: 'Unknown',
  series: 'Z',
  gender: 'Male',
  url: 'url_placeholder',
  planet: unknown_planet,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858840/dragonball-wiki-api/Characters/Captain_Ginyu_dr7rlp.png'
)

Character.create(
  name: 'Good Majin Buu',
  status: 'Dead',
  species: 'Majin',
  series: 'Z',
  gender: 'Male',
  url: 'url_placeholder',
  planet: unknown_planet,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858862/dragonball-wiki-api/Characters/Good_Majin_Buu_cuhltw.png'
)

Character.create(
  name: 'Kid Buu',
  status: 'Dead',
  species: 'Majin',
  series: 'Z',
  gender: 'Male',
  url: 'url_placeholder',
  planet: unknown_planet,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858843/dragonball-wiki-api/Characters/Kid_Buu_udfgaq.png'
)

# ---------------- WORLD CORE CHARACTERS -----------------
Character.create(
  name: 'Supreme Kai Shin',
  status: 'Alive',
  species: 'Core Person',
  series: 'Z',
  gender: 'Male',
  url: 'url_placeholder',
  planet: kai_world,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858858/dragonball-wiki-api/Characters/Supreme_Kai_Shin_gbhd80.png'
)

Character.create(
  name: 'King Kai',
  status: 'Dead',
  species: 'Core Person',
  series: 'Z',
  gender: 'Male',
  url: 'url_placeholder',
  planet: kai_world,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858856/dragonball-wiki-api/Characters/King_Kai_qimojw.png'
)

# ---------------- BEERUS PLANET CHARACTERS -----------------
Character.create(
  name: 'Beerus',
  status: 'Alive',
  species: 'Catman',
  series: 'Super',
  gender: 'Male',
  url: 'url_placeholder',
  planet: beerus_planet,
  image: 'https://res.cloudinary.com/hmgjpnzby/image/upload/v1605858842/dragonball-wiki-api/Characters/Beerus_itcxap.png'
)

Character.all.each do |character|
  character.update(url: "#{url_prefix}/characters/#{character.id}")
end

puts 'Characters & Planets Created'
