class Plant {
  String name;
  String img;
  String model;
  String title;
  String about;
  String distanceFromSun;
  String lengthOfDay;
  String orbitalPeriod;
  String radius;
  String mass;
  String gravity;
  String surfaceArea;

  Plant({
    required this.name,
    required this.img,
    required this.model,
    required this.title,
    required this.about,
    required this.distanceFromSun,
    required this.lengthOfDay,
    required this.orbitalPeriod,
    required this.radius,
    required this.mass,
    required this.gravity,
    required this.surfaceArea,
  });

  static List<Plant> plants = [
    Plant(
      name: "Sun",
      img: "sun.png",
      model: "sun.glb",
      title: "The Sun: Our Solar System's Star",
      about:
      "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
      distanceFromSun: "0",
      lengthOfDay: "0.0",
      orbitalPeriod: "0.0",
      radius: "695700.0",
      mass: "1.989 × 10³⁰",
      gravity: "274.0",
      surfaceArea: "6.09 × 10¹²",
    ),
    Plant(
      name: "Mercury",
      img: "mercury.png",
      model: "mercury.glb",
      title: "Mercury: The Closest Planet",
      about:
      "Mercury is the smallest and innermost planet in our solar system, with a surface covered in craters. Due to its proximity to the Sun, it has extreme temperature variations, with scorching days and freezing nights.",
      distanceFromSun: "57909227",
      lengthOfDay: "1407.6",
      orbitalPeriod: "0.24",
      radius: "2439.7",
      mass: "3.301 × 10²³",
      gravity: "3.7",
      surfaceArea: "7.48 × 10⁷",
    ),
    Plant(
      name: "Venus",
      img: "venus.png",
      model: "venus.glb",
      title: "Venus: Earth's Toxic Twin",
      about:
      "Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system.",
      distanceFromSun: "108209072",
      lengthOfDay: "5832.2",
      orbitalPeriod: "0.62",
      radius: "6051.8",
      mass: "4.867 × 10²⁴",
      gravity: "8.87",
      surfaceArea: "4.60 × 10⁸",
    ),
    Plant(
      name: "Earth",
      img: "earth.png",
      model: "earth.glb",
      title: "Earth: Our Blue Marble",
      about:
      "Earth is the only known planet that supports life. It has liquid water, a breathable atmosphere, and a magnetic field that protects it from solar radiation.",
      distanceFromSun: "149598026",
      lengthOfDay: "23.93",
      orbitalPeriod: "1.0",
      radius: "6371.0",
      mass: "5.972 × 10²⁴",
      gravity: "9.81",
      surfaceArea: "5.10 × 10⁸",
    ),
    Plant(
      name: "Mars",
      img: "mars.png",
      model: "mars.glb",
      title: "Mars: The Red Planet",
      about:
      "Mars, known as the Red Planet, is a cold, rocky desert world. Evidence suggests it once had liquid water, making it a focus for exploration and the search for life.",
      distanceFromSun: "227943824",
      lengthOfDay: "24.62",
      orbitalPeriod: "1.88",
      radius: "3389.5",
      mass: "6.39 × 10²³",
      gravity: "3.71",
      surfaceArea: "1.45 × 10⁸",
    ),
    Plant(
      name: "Jupiter",
      img: "jupiter.png",
      model: "jupiter.glb",
      title: "Jupiter: The Gas Giant",
      about:
      "Jupiter is the largest planet in our solar system and is primarily made of gas. It features the Great Red Spot, a massive storm, and many moons, some of which may harbor life.",
      distanceFromSun: "778547669",
      lengthOfDay: "9.92",
      orbitalPeriod: "11.86",
      radius: "69911.0",
      mass: "1.898 × 10²⁷",
      gravity: "24.79",
      surfaceArea: "6.21 × 10¹⁵",
    ),
    Plant(
      name: "Saturn",
      img: "saturn.png",
      model: "saturn.glb",
      title: "Saturn: The Ringed Planet",
      about:
      "Saturn is best known for its stunning rings made of ice and rock. It is a gas giant with a unique appearance, and its moon Titan is a focus of astrobiology research.",
      distanceFromSun: "1426666422",
      lengthOfDay: "10.66",
      orbitalPeriod: "29.46",
      radius: "58232.0",
      mass: "5.683 × 10²⁶",
      gravity: "10.44",
      surfaceArea: "4.27 × 10¹⁵",
    ),
    Plant(
      name: "Uranus",
      img: "uranus.png",
      model: "uranus.glb",
      title: "Uranus: The Tilted Planet",
      about:
      "Uranus is an ice giant with a unique axial tilt, causing extreme seasons. It has a pale blue color due to methane in its atmosphere and faint rings.",
      distanceFromSun: "2870990000",
      lengthOfDay: "17.24",
      orbitalPeriod: "84.01",
      radius: "25362.0",
      mass: "8.681 × 10²⁵",
      gravity: "8.69",
      surfaceArea: "8.1 × 10¹⁵",
    ),
    Plant(
      name: "Neptune",
      img: "neptune.png",
      model: "neptune.glb",
      title: "Neptune: The Distant World",
      about:
      "Neptune is the farthest planet from the Sun. It is an ice giant with strong winds, a deep blue color due to methane, and several moons, including Triton.",
      distanceFromSun: "4498252900",
      lengthOfDay: "16.11",
      orbitalPeriod: "164.8",
      radius: "24622.0",
      mass: "1.024 × 10²⁶",
      gravity: "11.15",
      surfaceArea: "7.65 × 10¹⁵",
    ),
  ];
}