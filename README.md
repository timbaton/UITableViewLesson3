# UITableViewLesson3

## HW 
Нужно будет реализовать профиль пользователя из соц. сети инстраграм.   
Основные разделы условно можно поделить на 3 части: **верхняя, средняя, остальная**.   

**Верхняя** часть включает в себя: Аватар, Имя, статус пользователя   

**Средняя** часть включает в себя: бар с 3-мя кнопками - сетка, список, отмеченные фотки (можно использовать любые подходящие иконки). Сетка переключает фотки в режим UICollectionView, список соотвественно отображает фотки списком, где в ячейке отображается - аватар, ник, фотка и под фоткой лайк, коммент, шаринг, избранные кнопки. Отмеченные фотки - это UICollectionView с другим набором данных.   
По факту каждый режим является отдельным UI объектом, т.е. у вас 2 UICollectioView и 1 UITableView. Вы можете их прятать и отображать в зависимости от нужной кнопки, либо придумать свою логику.   

**Нижняя часть** - это часть с коллекцией фоток, таблицой. 

Вся верстка должна быть на автолайутах и без косяков(!!!) отображаться на моделя 6s, 6s+, SE, iPhone X.    
Дизайн постараться передать из самой инсты, у кого нет представления, можете спросить у меня или своих коллег. 
Никаких доп. страниц не требуется. 

## Задание со *:   
Сделать возможность перетащить фотку из UICollectionView ваших фоток, в UICollectionView с отмеченными фотками и обратно.   Каким образом - ваша фантазия, но пользователю должно быть наглядно понятно, что фотка добавилась в другое место.   

## Полезные ссылки: 
https://www.ralfebert.de/tutorials/ios-swift-uitableviewcontroller/ - работа с таблицами 
https://www.andrewcbancroft.com/2015/03/17/basics-of-pull-to-refresh-for-swift-developers/ - работа с pull-to-refresh-ом. 
https://www.raywenderlich.com/443-auto-layout-tutorial-in-ios-11-getting-started - работа с автолайаутом в iOS