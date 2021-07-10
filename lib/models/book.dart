

class Book {
  final image, title, writer, description, language, price;
  final int pages, id;
  final double rating;
  bool isSave;
  Book({
    this.id,
    this.image,
    this.title,
    this.writer,
    this.description,
    this.pages,
    this.rating,
    this.language,
    this.price,
    this.isSave,
  });
}

List<Book> books = [
  Book(
    id: 1,
    image: "https://cdn.gramedia.com/uploads/items/9786024526986_Sebuah-Seni-Untuk-Bersikap-Bodo-Amat.jpg",
    title: "Sebuah Seni untuk Bersikap Bodo Amat",
    writer: "Mark Manson",
    description: "“Dalam hidup ini, kita hanya punya kepedulian dalam jumlah yang terbatas. Makanya, Anda harus bijaksana dalam menentukan kepedulian Anda.” Manson menciptakan momen perbincangan yang serius dan mendalam, dibungkus dengan cerita-cerita yang menghibur dan “kekinian”, serta humor yang cadas. Buku ini merupakan tamparan di wajah yang menyegarkan untuk kita semua, supaya kita bisa mulai menjalani kehidupan yang lebih memuaskan, dan apa adanya.",
    rating: 3.93,
    pages: 256,
    language: "Ind",
    price: "67.000",
    isSave: false,
  ),
  Book(
    id: 2,
    image: "https://cdn.gramedia.com/uploads/items/9786020333175_rich-dad-poor-dad-_edisi-revisi_.jpg",
    title: "Rich Dad Poor Dad",
    writer: "Robert T. Kiyosaki",
    description: "Rich Dad Poor Dad akan…. \n• Menghancurkan mitos “Anda perlu memiliki penghasilan tinggi agar bisa kaya” \n• Menantang keyakinan bahwa rumah Anda adalah aset \n• Menunjukkan kepada orangtua kenapa mereka tidak bisa mengandalkan sistem pendidikan untuk mengajari anak mereka tentang uang \n• Mendefinisikan aset dan liabilitas secara jelas \n • Mengajari Anda apa yang harus Anda ajarkan kepada anak tentang uang agar mereka memiliki masa depan keuangan yang sukses \n\nRobert Kiyosaki telah menantang dan mengubah cara pikir puluhan juta orang di seluruh dunia tentang uang. Dengan perspektif yang kerap bertentangan dengan kebijaksanaan umum, Robert memiliki reputasi sebagai orang yang bicara secara apa adanya, tidak menganggap penting hal-hal yang umumnya dianggap serius, dan berani. Dia diakui di seluruh dunia sebagai orang yang berdedikasi dan peduli dengan pendidikan keuangan.",
    rating: 4.09,
    pages: 244,
    language: "Ind",
    price: "120.000",
    isSave: false,
  ),
  Book(
    id: 3,
    image: "https://cdn.gramedia.com/uploads/items/9786230022180_Jujutsukaisen_1.jpg",
    title: "Jujutsu Kaisen 01",
    writer: "Gege Akutami",
    description: 'Yuji Itadori seorang murid SMA dengan kemampuan atletik yang luar biasa. Kesehariannya adalah menjenguk kakeknya yang terbaring di rumah sakit. Suatu hari, segel "objek terkutuk" yang berada di sekolahnya terlepas, monster-monster pun mulai bermunculan. Yuji menyusup ke dalam gedung sekolah demi menolong senior di klubnya, akan tetapi...!?',
    rating: 4.38,
    pages: 200,
    language: "Eng",
    price: null,
    isSave: false,
  ),
];