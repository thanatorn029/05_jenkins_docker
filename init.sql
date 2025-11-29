CREATE TABLE `attraction` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coverimage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `attraction` (`id`, `name`, `detail`, `coverimage`, `latitude`, `longitude`) VALUES
(1, 'Silverstone Circuit', 'The home of British motorsport, hosting Formula 1 British Grand Prix.', '/Silverstone Circuit.webp', 52.0786, -1.0169),
(2, 'Monaco Grand Prix Circuit', 'Famous street circuit in Monte Carlo, known for its tight corners and luxury backdrop.', 'Monaco Grand Prix Circuit.webp', 43.7347, 7.4206),
(3, 'Suzuka Circuit', 'Iconic Japanese track with figure-eight layout, hosting F1 Japanese Grand Prix.', 'Suzuka Circuit.avif', 34.8431, 136.5410),
(4, 'Circuit de Spa-Francorchamps', 'Legendary Belgian track, known for Eau Rouge corner and unpredictable weather.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/dc/Spa-Francorchamps_-_aerial_view.jpg/640px-Spa-Francorchamps_-_aerial_view.jpg', 50.4372, 5.9714),
(5, 'Autodromo Nazionale Monza', 'Historic Italian circuit near Milan, famous for high-speed straights.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/Monza_circuit_2018.jpg/640px-Monza_circuit_2018.jpg', 45.6156, 9.2811),
(6, 'Laguna Seca', 'Famous US track in California, known for the challenging Corkscrew turn.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Laguna_Seca_Aerial.jpg/640px-Laguna_Seca_Aerial.jpg', 36.5841, -121.7480),
(7, 'Circuit of the Americas', 'Austin, Texas track hosting F1 US Grand Prix, known for its elevation changes.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/COTA_2013_Satellite.jpg/640px-COTA_2013_Satellite.jpg', 30.1328, -97.6411),
(8, 'Interlagos (Autódromo José Carlos Pace)', 'Brazilian F1 circuit in São Paulo, famous for its passionate fans and unpredictable races.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Autodromo_Interlagos_aerial.jpg/640px-Autodromo_Interlagos_aerial.jpg', -23.7036, -46.6997),
(9, 'Yas Marina Circuit', 'Abu Dhabi F1 track with unique twilight race and marina backdrop.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Yas_Marina_Circuit_aerial.jpg/640px-Yas_Marina_Circuit_aerial.jpg', 24.4672, 54.6031),
(10, 'Red Bull Ring', 'Austrian F1 track in Spielberg, known for scenic views and fast corners.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Red_Bull_Ring_satellite_image.jpg/640px-Red_Bull_Ring_satellite_image.jpg', 47.2197, 14.7648),
(11, 'Hockenheimring', 'German circuit with rich F1 history, combining high-speed straights and technical corners.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Hockenheimring_satellite_view.jpg/640px-Hockenheimring_satellite_view.jpg', 49.3276, 8.5656),
(12, 'Nürburgring GP-Strecke', 'Modern GP track in Germany, part of famous Nürburgring complex.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Nurburgring_GP_circuit.jpg/640px-Nurburgring_GP_circuit.jpg', 50.3356, 6.9475);
