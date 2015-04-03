# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.create([{title: :admin, name: 'Administratör', description: 'Detta är en administratör'},
                         {title: :owner, name: 'Ägare', description: 'Detta är en ägare'},
                         {title: :worker, name: 'Arbetare', description: 'Detta är en arbetare'}])

MachineType.create([{title: 'Rotorgräsklippare', short: :rotor},
                                {title: 'Robotgräsklippare', short: :robot},
                                {title: 'Rider', short: :rider},
                                {title: 'Traktorgräsklippare'},
                                {title: 'Cylindergräsklippare', short: :cylinder},
                                {title: 'Häcksax', short: :hacksax},
                                {title: 'Grästrimmer', short: :trimmer},
                                {title: 'Röjsåg', short: :rojsag},
                                {title: 'Motorsåg', short: :motorsag},
                                {title: 'Lövblås', short: :lovblas},
                                {title: 'Jordfräs', short: :fras},
                                {title: 'Snöslunga', short: :snoslunga}])

Brand.create([{title: 'Klippo', short: :klippo, url: 'http://www.klippo.com/se/'},
                          {title: 'Husqvarna', short: :husqvarna, url: 'http://www.husqvarna.com/se/home/'},
                          {title: 'AL-KO', short: :alko, url: 'http://www.al-ko.com/shop/se/'},
                          {title: 'Jonsered', short: :jonsered, url: 'http://www.jonsered.com/se/'},
                          {title: 'Hitachi', short: :hitachi, url: 'http://www.hitachi-powertools.se/produkter.aspx'},
                          {title: 'Stiga', short: :stiga, url: 'http://www.stiga.se/hem.html'},
                          {title: 'Partner', short: :partner, url: 'http://www.mcculloch.com/se/'},
                          {title: 'McCulloch', short: :mcculloch, url: 'http://www.mcculloch.com/se/'},
                          {title: 'Tanaka', short: :tanaka, url: 'http://www.hitachi-powertools.se/produkter.aspx'},
                          {title: 'Gardena', short: :gardena, url: 'http://www.gardena.com/se/'},
                          {title: 'Viking', short: :jonsered, url: 'http://www.stihl.se/viking-produkter.aspx'},
                          {title: 'Stihl', short: :stihl, url: 'http://www.stihl.se/'},
                          {title: 'Wolf-garten', short: :wolfgarten, url: 'http://www.wolf-garten.se'}])

City.create([{title: 'Nyhamnsläge', postal_title: 'Nyhamnsläge', postal_code: '26375'},
                         {title: 'Nyhamnsläge', postal_title: 'Nyhamnsläge', postal_code: '26376'},
                         {title: 'Lerhamn', postal_title: 'Nyhamnsläge', postal_code: '26376'},
                         {title: 'Arild', postal_title: 'Arild', postal_code: '26373'},
                         {title: 'Farhult', postal_title: 'Farhult', postal_code: '26395'},

                         {title: 'Höganäs', postal_title: 'Höganäs', postal_code: '26331'},
                         {title: 'Höganäs', postal_title: 'Höganäs', postal_code: '26332'},
                         {title: 'Höganäs', postal_title: 'Höganäs', postal_code: '26333'},
                         {title: 'Höganäs', postal_title: 'Höganäs', postal_code: '26334'},
                         {title: 'Höganäs', postal_title: 'Höganäs', postal_code: '26336'},
                         {title: 'Höganäs', postal_title: 'Höganäs', postal_code: '26337'},
                         {title: 'Höganäs', postal_title: 'Höganäs', postal_code: '26338'},
                         {title: 'Höganäs', postal_title: 'Höganäs', postal_code: '26339'},
                         {title: 'Höganäs', postal_title: 'Höganäs', postal_code: '26351'},
                         {title: 'Höganäs', postal_title: 'Höganäs', postal_code: '26357'},
                         {title: 'Höganäs', postal_title: 'Höganäs', postal_code: '26391'},

                         {title: 'Jonstorp', postal_title: 'Jonstrop', postal_code: '26371'},
                         {title: 'Jonstorp', postal_title: 'Jonstorp', postal_code: '26392'},

                         {title: 'Lerberget', postal_title: 'Lerberget', postal_code: '26352'},
                         {title: 'Lerberget', postal_title: 'Lerberget', postal_code: '26353'},
                         {title: 'Lerberget', postal_title: 'Lerberget', postal_code: '26354'},

                         {title: 'Mjöhult', postal_title: 'Mjöhult', postal_code: '26394'},

                         {title: 'Mölle', postal_title: 'Mölle', postal_code: '26377'},
                         {title: 'Skäret', postal_title: 'Skäret', postal_code: '26372'},
                         {title: 'Strandbaden', postal_title: 'Strandbaden', postal_code: '26358'},

                         {title: 'Viken', postal_title: 'Viken', postal_code: '26361'},
                         {title: 'Viken', postal_title: 'Viken', postal_code: '26362'},
                         {title: 'Viken', postal_title: 'Viken', postal_code: '26363'},
                         {title: 'Viken', postal_title: 'Viken', postal_code: '26365'}])
