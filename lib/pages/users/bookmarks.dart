
List<Bookmark> saveds = [
  Bookmark(img: 'book_mark_first_img', messageTitle: 'Maecenas mattis hendrerit enim ac vestibulu...', text: 'Phasellus interdum neque nunc, non tempor dui auctor eu. Mauris tincidunt tincidunt odio, eu elementum tellus. Curabitur blandit nisl sit amet mauris finibus.', isSaved: false),
  Bookmark(img: 'book_mark_second_img', messageTitle: 'Maecenas mattis hendrerit enim ac vestibulu...', text: 'Phasellus interdum neque nunc, non tempor dui auctor eu. Mauris tincidunt tincidunt odio, eu elementum tellus. Curabitur blandit nisl sit amet mauris finibus.', isSaved: false),
  Bookmark(img: 'book_mark_threed_img', messageTitle: 'Maecenas mattis hendrerit enim ac vestibulu...', text: 'Phasellus interdum neque nunc, non tempor dui auctor eu. Mauris tincidunt tincidunt odio, eu elementum tellus. Curabitur blandit nisl sit amet mauris finibus.', isSaved: false),
  Bookmark(img: 'room_img', messageTitle: 'Maecenas mattis hendrerit enim ac vestibulu...', text: 'Phasellus interdum neque nunc, non tempor dui auctor eu. Mauris tincidunt tincidunt odio, eu elementum tellus. Curabitur blandit nisl sit amet mauris finibus.', isSaved: false),

];

class Bookmark{
  String img;
  String messageTitle;
  String text;
  bool isSaved;
  
  Bookmark({required this.img, required this.messageTitle,required this.text, required this.isSaved});
}