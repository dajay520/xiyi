#encoding:utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Role.delete_all
Role.create(
    name:'个人用户',
    type:'P'
)
Role.create(
    name:'管理员',
    type:'A'
)

Clothe.delete_all
Clothe.create(
    name:'羽绒服',
    image_url:'/clothes/ylf.jpg',
    create_date:'2012-01-01',
    stop_date:'2112-01-01'
)

Clothe.create(
    name:'西装上衣',
        image_url:'/clothes/xz.jpg',
        create_date:'2012-01-01',
        stop_date:'2112-01-01'
)
Clothe.create(
    name:'夹克等外套(薄)',
        image_url:'/clothes/jk.jpg',
        create_date:'2012-01-01',
        stop_date:'2112-01-01'
)
Clothe.create(
    name:'裤子，短裙',
        image_url:'/clothes/kz.jpg',
        create_date:'2012-01-01',
        stop_date:'2112-01-01'
)
Clothe.create(
    name:'领带,围巾',
        image_url:'/clothes/ld.jpg',
        create_date:'2012-01-01',
        stop_date:'2112-01-01'
)
Clothe.create(
    name:'羊绒衫',
        image_url:'/clothes/yls.jpg',
        create_date:'2012-01-01',
        stop_date:'2112-01-01'
)