 c1=Customer.create(name:'Stella Byrne', 
        email:'stellabyrne@jmail.com',
       
         street: "2 south street",
         town: "New Ross",
         county: "Wexford",
         phone: "0519242233")

   c2=Customer.create(name:'Roy Murphy', 
        email:'roymurphy@jmail.com',
       
         street: "2 bride street",
         town: "Wexford",
         county: "Wexford",
         phone: "0539124528")

     c3=Customer.create(name:'Ciaran Meaney', 
        email:'ciaranmeaney@jmail.com',
       
         street: "15 Patrick Street",
         town: "Enniscorthy",
         county: "Wexford",
         phone: "0539255687")

      c4=Customer.create(name:'Rie Nolan', 
        email:'roynolan@jmail.com',
       
         street: "Ballyhack",
         town: "New Ross",
         county: "Wexford",
         phone: "0513892305")

      beko=Manufacturer.create(name:"Beko", street:"street",town:"town",county:"county",phone:"0511234567",email:"beko@ares.com")

        hotpoint_cooker=Product.create(manufacturer_id:beko.id,serial_number:'12345679',
        product_number:'ECK6461', 
        description:'Cooker, free standing, 60 CM, Electric'
       )

    electrolux_cooker=Product.create(manufacturer_id:beko.id,serial_number:'12345680',
        product_number:'ECK6461', 
        description:'Cooker, free standing, 60 CM, Electric'
       )

    belling_cooker=Product.create(manufacturer_id:beko.id,serial_number:'12345681',
        product_number:'FSE60DOBLK', 
        description:'Cooker, double oven, electric'
       )


    beko_cooker=Product.create(manufacturer_id:beko.id,serial_number:'12345682',
        product_number:'BSVC563AK', 
        description:'Cooker, double oven, electric'
      )

    indesit_washing_machine=Product.create(manufacturer_id:beko.id,serial_number:'12345683',
        product_number:'IWSD61251', 
        description:'Washing machine, 6KG, A+'
       ) 


    bosch_washing_machine=Product.create(manufacturer_id:beko.id,serial_number:'12345684',
        product_number:'WAT24460GB', 
        description:'Washing machine, 8KG'
       ) 

    hotpoint_washing_machine=Product.create(manufacturer_id:beko.id,serial_number:'12345685',
        product_number:'WMBF944G', 
        description:'Washing machine, 9KG, A+++, 1400 Spin'
     )

        beko_washing_machine=Product.create(manufacturer_id:beko.id,serial_number:'12345686',
        product_number:'WMG 11464', 
        description:'Washing Machine, 11KG, 1400 Spin')

