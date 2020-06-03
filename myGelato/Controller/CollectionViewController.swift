//
//  CollectionViewController.swift
//  myGelato
//
//  Created by Арина on 29.05.2020.
//  Copyright © 2020 Арина. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    
    let itemsPerRow: CGFloat = 2
    let sectionInserts = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    
    var myGelatoArray: [Gelato] = {
        var gorgonsal = Gelato()
        gorgonsal.name = "Горгонзала"
        gorgonsal.type = "Джелато"
        gorgonsal.description = "Самый известный итальянский сыр с голубой плесенью придает особенный пикантный вкус нашему эксклюзивному мороженому джелато, а грецкий орех добавляет вкусовую гамму."
        
        var  sugarFreeStrawberries = Gelato()
        sugarFreeStrawberries.name = "Клубника без сахара"
        sugarFreeStrawberries.type = "Джелато"
        sugarFreeStrawberries.description = "Клубника без сахара особо порадует представительниц прекрасного пола. Ведь женщина всегда старается быть стройной и привлекательной. Сегодня это возможно, причём отказываться от таких удовольствий, как вкусный холодный десерт, не придется."
        
        var venice = Gelato()
        venice.name = "Венеция"
        venice.type = "Джелато"
        venice.description = "Итальянское мороженое - джелато приготовленное на основе сливочного пломбира с добавлением горького шоколада известного французкого бренда шоколатье Valrhona и апельсиновой цедры."
        
        var cookies = Gelato()
        cookies.name = "Печенье"
        cookies.type = "Джелато"
        cookies.description = "Джелато с кусочками печенья, сочетание любимых вкусов понравится и детям и взрослым."
        
        var yogurtCherry = Gelato()
        yogurtCherry.name = "Йогурт вишня"
        yogurtCherry.type = "Джелато"
        yogurtCherry.description = "Необыкновенное сочетание натурального йогурта с кислинкой и сладости вариегато вишня Амарена воплотились в вкуснейшем джелато йогурт вишня."
        
        var eskimo = Gelato()
        eskimo.name = "Эскимо"
        eskimo.type = "Джелато"
        eskimo.description = "Вы помните вкус эскимо из детства? Нежнейший сливочный пломбир и шоколадная крошка в джелато Эскимо воссоздадут тот самый любимый и вкус воспоминаний детства."
        
        var mint = Gelato()
        mint.name = "Мята"
        mint.type = "Джелато"
        mint.description = "Яркий вкус джелато мята подарит прохладу летнего дня и оставит незабываемое послевкусие. А еще мята идеально сочетается практически с любым вкусом джелато."
        
        var watermelon = Gelato()
        watermelon.name = "Арбуз"
        watermelon.type = "Сорбет"
        watermelon.description = "Сорбет арбуз - символ летнего сезона. Сладкий и свежий станет прохладным лакомством для всей семьи! Помните, как в детстве, и наелся, и напился, и умылся?!"
        
        var melon = Gelato()
        melon.name = "Дыня"
        melon.type = "Сорбет"
        melon.description = "Хит сезона! Приятный освежающий и очень нежный на вкус сорбет из дыни - прекрасный десерт для жаркого летнего дня. Кусочки спелой дыни в составе итальянского мороженого напомнят о летних приключениях в любое время!"
        
        var kiwi = Gelato()
        kiwi.name = "Киви"
        kiwi.type = "Сорбет"
        kiwi.description = "Для сорбета из киви мы отбираем самы свежие и спелые плоды. Он обладает теми же свойствами что и тропический фрукт. Предупреждает простудные заболевания и повышает иммунитет благодаря высокому содержанию витамина С."
        
        var black = Gelato()
        black.name = "Чёрное"
        black.type = "Джелато"
        black.description = "Трендовый брутальный цвет нашему фирменному пломбиру с нотками миндаля придает пищевой уголь. Удивите друзей и близких!"
        
        
        var milkChocolate = Gelato()
        milkChocolate.name = "Молочный шоколад"
        milkChocolate.type = "Джелато"
        milkChocolate.description = "Итальянское мороженое - джелато для любителей шоколада. Отличается от других шоколадных вкусов созвучием ароматных ноток какао и сливок. Нежное и сладкое, как наши воспоминания о детстве и самых счастливых моментах жизни."
        
        var blueMatcha = Gelato()
        blueMatcha.name = "Голубая матча"
        blueMatcha.type = "Джелато"
        blueMatcha.description = "Изысканная новинка итальянского мороженого-джелато синего цвета сможет принести не только лайки под фото, но и преимущества для фанатов здорового образа жизни. Цвет нашему новому джелато <Голубая матча> придает цветок анчан, известный как тайский синий чай. Известно, что он улучшает память и снимает стресс."
        
        var raspberry = Gelato()
        raspberry.name = "Малина"
        raspberry.type = "Сорбет"
        raspberry.description = "Сорбет из свежей лесной малины."
        
        var gingerMango = Gelato()
        gingerMango.name = "Манго-имбирь"
        gingerMango.type = "Сорбет"
        gingerMango.description = "Сорбет из натурального пюре манго с пряными нотками имбиря. Уникальный рецепт, особенный вкус!"
        
        var strawberryBasil = Gelato()
        strawberryBasil.name = "Клубника-базилик"
        strawberryBasil.type = "Сорбет"
        strawberryBasil.description = "Нежный вкус свежей клубники с добавлением зеленого базилика."
        
        var nuts = Gelato()
        nuts.name = "4 ореха"
        nuts.type = "Джелато"
        nuts.description = "В составе этого итальянского мороженого -джелато 4 ореха: сицилийская фисташка, миндаль, фундук и пиния (кедр)."
        
 
        var figMascarpone = Gelato()
        figMascarpone.name = "Инжир-маскарпоне"
        figMascarpone.type = "Джелато"
        figMascarpone.description = "Итальянское мороженое - джелато на основе нежного сливочного сыра маскарпоне с добавлением инжира."
        
        var caramelCookies = Gelato()
        caramelCookies.name = "Печенье-карамель"
        caramelCookies.type = "Джелато"
        caramelCookies.description = "Итальянское мороженое - джелато с добавлением хрустящего печенья и карамели."
        
        var sicilianPistachio = Gelato()
        sicilianPistachio.name = "Сицилийская фисташка"
        sicilianPistachio.type = "Джелато"
        sicilianPistachio.description = "Итальянское мороженое - джелато, для приготовления которого мы используем только настоящую сицилийскую фисташку со склонов вулкана Этна."
                

        return [gorgonsal, sugarFreeStrawberries, venice, cookies, yogurtCherry,
                eskimo, mint, watermelon, melon, kiwi, black, milkChocolate,
                blueMatcha, raspberry, gingerMango, strawberryBasil, nuts,
                figMascarpone, caramelCookies, sicilianPistachio]
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return myGelatoArray.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CollectionViewCell {
            
            cell.gelato = myGelatoArray[indexPath.row]
            
            
            return cell
        }
        return UICollectionViewCell()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detail" {
            let detailVC = segue.destination as! DetailViewController
            let gelato = sender as? Gelato
            //print(gelato ?? nil)
            detailVC.gelato = gelato
        }
    }
    
}



extension CollectionViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let paddingWidth = sectionInserts.left * (itemsPerRow + 1)
        let availableWidth = collectionView.frame.width - paddingWidth
        let widthPerItem = availableWidth / itemsPerRow
        return CGSize(width: widthPerItem, height: 260)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInserts
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInserts.left
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInserts.left
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let gelato = myGelatoArray[indexPath.row]
        self.performSegue(withIdentifier: "detail", sender: gelato)
    }
}
