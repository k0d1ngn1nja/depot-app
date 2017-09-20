Product.delete_all

Product.create!(
	title: 'Samsung Gear 3',
	description: %{<p>Exceptional style and exciting tech combine with the Samsung Gear S3 Frontier. This stunning smartwatch features Bluetooth and Wi-Fi connectivity, with GPS navigation, activity tracking, and heart rate monitoring. It syncs with your smartphone to provide alerts and relay messages, and it accepts voice commands and supports touch texting.</p>},
	image_url: 'gear3.jpeg',
	price: 430.00
);

Product.create!(
	title: 'Apple Watch Series 2',
	description: %{<p>With built-in GPS and water resistance to 50 metres*, the Apple Watch Series 2 features a new lightning-fast dual-core processor and 2x brighter display for increased visibility in direct sunlight**. Full of features that help you stay active, motivated and connected, Apple Watch Series 2 is designed for all the ways you move.</p>},
	image_url: 'applewatch.jpg',
	price: 500.00
)

Product.create!(
	title: 'Samsung Gear 2',
	description: %{<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat..</p>},
	image_url: 'gear3.jpeg',
	price: 300.00
)