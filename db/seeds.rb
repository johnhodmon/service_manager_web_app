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

 #add manufacturers
   

 

      beko=Manufacturer.create(name:" Beko plc", street:"1 Greenhill Crescent",town:"Watford",
        county:"Hertz", country:"England", phone:"00448009172018",email:"info@beko.com")

      electrolux=Manufacturer.create(name:"Electrolux ltd", street:"Unit 4 Whitemill Industrial Est.",town:"Wexford",
        county:"Wexford", country:"Ireland", phone:"0053539126300",email:"info@electrolux.com")

      belling=Manufacturer.create(name:" Belling plc", street:"Stoney Lane",town:"Prescot ",
        county:"Merseyside", country:"England", phone:"00443448153746",email:"info@belling.com")

      indesit=Manufacturer.create(name:" Indesit Company UK Ltd", street:"Morley Way,",town:"Peterborough",
        county:"Cambridgeshire", country:"England", phone:"00441733568989",email:"info@beko.com")

      hotpoint=Manufacturer.create(name:" Hotpoint Lts", street:"25 Kenley Crescent",town:"Cork",
        county:"Cork", country:"Ireland", phone:"003532155987552",email:"info@hotpoint.ie")

      bosch=Manufacturer.create(name:" Robert Bosch GmbH", street:"Postfach 30 02 40",town:"Stuttgart",
        county:"Hertz", country:"Germany", phone:"00497118110",email:"info@bosch.de")

      electrolux=Manufacturer.create(name:"Electrolux plc", street:"Addington Way",town:"Luton",
        county:"Bedfordshire", country:"England", phone:"00443445613613.",email:"info@electrolux.co.uk")




 #products  

  hotpoint_cooker=Product.create(manufacturer_id:beko.id,serial_number:'12345679',
        product_number:'ECK6461', 
        description:'Cooker, free standing, 60 CM, Electric'
       )     

    electrolux_cooker=Product.create(manufacturer_id:electrolux.id,serial_number:'12345680',
        product_number:'ECK6461', 
        description:'Cooker, free standing, 60 CM, Electric'
       )

    belling_cooker=Product.create(manufacturer_id:belling.id,serial_number:'12345681',
        product_number:'FSE60DOBLK', 
        description:'Cooker, double oven, electric'
       )


    beko_cooker=Product.create(manufacturer_id:beko.id,serial_number:'12345682',
        product_number:'BSVC563AK', 
        description:'Cooker, double oven, electric'
      )

    indesit_washing_machine=Product.create(manufacturer_id:indesit.id,serial_number:'12345683',
        product_number:'IWSD61251', 
        description:'Washing machine, 6KG, A+'
       ) 


    bosch_washing_machine=Product.create(manufacturer_id:bosch.id,serial_number:'12345684',
        product_number:'WAT24460GB', 
        description:'Washing machine, 8KG'
       ) 

    hotpoint_washing_machine=Product.create(manufacturer_id:hotpoint.id,serial_number:'12345685',
        product_number:'WMBF944G', 
        description:'Washing machine, 9KG, A+++, 1400 Spin'
     )

        beko_washing_machine=Product.create(manufacturer_id:beko.id,serial_number:'12345686',
        product_number:'WMG 11464', 
        description:'Washing Machine, 11KG, 1400 Spin')
      

#add products to customers

          customer = Customer.find_by_email("stellabyrne@jmail.com")
    customer.products << hotpoint_cooker 
      customer.products << electrolux_cooker

       customer = Customer.find_by_email("roymurphy@jmail.com")
        customer.products << belling_cooker


       customer = Customer.find_by_email("ciaranmeaney@jmail.com")
        customer.products << electrolux_cooker 
        customer.products << indesit_washing_machine
     

         customer = Customer.find_by_email("roynolan@jmail.com")

        customer.products << beko_cooker 
            customer.products << bosch_washing_machine


#Washing machine parts
##############################
#drums

indesit_drum=Part.create(part_number: '31005000',
    description: 'Drum Washing Machine Indesit',
    quantity_in_stock: '52',
    cost: '85.32')

bosch_drum=Part.create(part_number: '31005001',
    description: 'Drum Washing Machine Bosch',
    quantity_in_stock: '45',
    cost: '93.20')

hotpoint_drum=Part.create(part_number: '31005002',
    description: 'Drum Washing Machine Hotpoint',
    quantity_in_stock: '45',
    cost: '93.20')

beko_drum=Part.create(part_number: '31005002',
    description: 'Drum Washing Machine Hotpoint',
    quantity_in_stock: '45',
    cost: '93.20')

#bearings

indesit_bearing=Part.create(part_number: '11125000',
    description: 'Bearing Washing Machine Indesit',
    quantity_in_stock: '250',
    cost: '8.25')

bosch_bearing=Part.create(part_number: '11125001',
    description: 'Bearing Washing Machine Bosch',
    quantity_in_stock: '190',
    cost: '5.65')

hotpoint_bearing=Part.create(part_number: '11125003',
    description: 'Bearing Washing Machine Hotpoint',
    quantity_in_stock: '220',
    cost: '10.10')

beko_bearing=Part.create(part_number: '11125004',
    description: 'Bearing Washing Machine Hotpoint',
    quantity_in_stock: '200',
    cost: '9.15')

#motors


indesit_motor=Part.create(part_number: '65005000',
    description: 'Motor Washing Machine Indesit',
    quantity_in_stock: '85',
    cost: '16.85')

bosch_motor=Part.create(part_number: '65005001',
    description: 'Motor Washing Machine Bosch',
    quantity_in_stock: '89',
    cost: '15.32')

hotpoint_motor=Part.create(part_number: '65005002',
    description: 'Motor Washing Machine Hotpoint',
    quantity_in_stock: '95',
    cost: '17.19')

beko_motor=Part.create(part_number: '65005003',
    description: 'Motor Washing Machine Hotpoint',
    quantity_in_stock: '105',
    cost: '11.52')



#controllers

indesit_controller=Part.create(part_number: '62165000',
    description: 'Controller Washing Machine Indesit',
    quantity_in_stock: '165',
    cost: '6.35')

bosch_controller=Part.create(part_number: '62165001',
    description: 'Controller Washing Machine Bosch',
    quantity_in_stock: '180',
    cost: '7.25')

hotpoint_controller=Part.create(part_number: '62165002',
    description: 'Controller Washing Machine Hotpoint',
    quantity_in_stock: '170',
    cost: '8.50')

beko_controller=Part.create(part_number: '62165003',
    description: 'Controller Washing Machine Beko',
    quantity_in_stock: '181',
    cost: '5.17')

#door seals
indesit_door_seal=Part.create(part_number: '43075000',
    description: 'Door Seal Washing Machine Indesit',
    quantity_in_stock: '150',
    cost: '2.35')

bosch_door_seal=Part.create(part_number: '43075001',
    description: 'Door Seal Washing Machine Bosch',
    quantity_in_stock: '160',
    cost: '4.50')

hotpoint_door_seal=Part.create(part_number: '43075002',
    description: 'Door Seal Washing Machine Hotpoint',
    quantity_in_stock: '145',
    cost: '3.75')

beko_door_seal=Part.create(part_number: '43075003',
    description: 'Door Seal Washing Machine Hotpoint',
    quantity_in_stock: '155',
    cost: '5.65')

#drain pumps
indesit_drain_pump=Part.create(part_number: '16085000',
    description: 'Drain Pump Washing Machine Indesit',
    quantity_in_stock: '30',
    cost: '25.00')

bosch_drain_pump=Part.create(part_number: '16085001',
    description: 'Drain Pump Washing Machine Bosch',
    quantity_in_stock: '40',
    cost: '21.50')

hotpoint_drain_pump=Part.create(part_number: '16085002',
    description: 'Drain_Pump_Washing Machine Hotpoint',
    quantity_in_stock: '145',
    cost: '3.75')

beko_drain_pump=Part.create(part_number: '16085003',
    description: 'Drain Pump Washing Machine Hotpoint',
    quantity_in_stock: '155',
    cost: '5.65')

#cooker parts
#########################################



#large rings

hotpoint_large_ring=Part.create(part_number: '65015000',
    description: 'Large Ring Cooker Hotpoint',
    quantity_in_stock: '145',
    cost: '8.50')

electrolux_large_ring=Part.create(part_number: '65015001',
    description: 'Large Ring Cooker Electrolux',
    quantity_in_stock: '145',
    cost: '9.00')

belling_large_ring=Part.create(part_number: '65015002',
    description: 'Large Ring Cooker Belling',
    quantity_in_stock: '145',
    cost: '7.75')

beko_large_ring=Part.create(part_number: '65015003',
    description: 'Large Ring Cooker Beko',
    quantity_in_stock: '145',
    cost: '9.25')



    #small rings
hotpoint_small_ring=Part.create(part_number: '65025000',
    description: 'Small Ring Cooker Hotpoint',
    quantity_in_stock: '113',
    cost: '6.50')

electrolux_small_ring=Part.create(part_number: '65025001',
    description: 'Small Ring Cooker Electrolux',
    quantity_in_stock: '125',
    cost: '4.35')

belling_small_ring=Part.create(part_number: '65025002',
    description: 'Small Ring Cooker Belling',
    quantity_in_stock: '90',
    cost: '5.12')

beko_small_ring=Part.create(part_number: '65025003',
    description: 'Small Ring Cooker Beko',
    quantity_in_stock: '110',
    cost: '7.12')



 #grill element
hotpoint_grill_element=Part.create(part_number: '11155000',
    description: 'Grill element Cooker Hotpoint',
    quantity_in_stock: '200',
    cost: '8.98')

electrolux_grill_element=Part.create(part_number: '11155001',
    description: 'Grill Element Cooker Electrolux',
    quantity_in_stock: '212',
    cost: '7.21')

belling_grill_element=Part.create(part_number: '11155002',
    description: 'Grill Element Cooker Belling',
    quantity_in_stock: '90',
    cost: '5.12')

beko_grill_element=Part.create(part_number: '11155003',
    description: 'Grill Element Cooker Beko',
    quantity_in_stock: '110',
    cost: '7.12')


 #oven element
hotpoint_oven_element=Part.create(part_number: '11155004',
    description: 'Oven element Cooker Hotpoint',
    quantity_in_stock: '200',
    cost: '16.50')

electrolux_oven_element=Part.create(part_number: '11155005',
    description: 'Oven Element Cooker Electrolux',
    quantity_in_stock: '260',
    cost: '14.75')

belling_oven_element=Part.create(part_number: '11155002',
    description: 'Oven Element Cooker Belling',
    quantity_in_stock: '90',
    cost: '10.60')

beko_oven_element=Part.create(part_number: '11155003',
    description: 'Oven Element Cooker Beko',
    quantity_in_stock: '110',
    cost: '12.85')

 #oven element
hotpoint_oven_element=Part.create(part_number: '11155004',
    description: 'Oven element Cooker Hotpoint',
    quantity_in_stock: '200',
    cost: '16.50')

electrolux_oven_element=Part.create(part_number: '11155005',
    description: 'Oven Element Cooker Electrolux',
    quantity_in_stock: '260',
    cost: '14.75')

belling_oven_element=Part.create(part_number: '11155006',
    description: 'Oven Element Cooker Belling',
    quantity_in_stock: '90',
    cost: '10.60')

beko_oven_element=Part.create(part_number: '11155007',
    description: 'Oven Element Cooker Beko',
    quantity_in_stock: '110',
    cost: '12.85')

#rheostats
hotpoint_rheostat=Part.create(part_number: '31055000',
    description: 'Rheostat Cooker Hotpoint',
    quantity_in_stock: '250',
    cost: '2.12')

electrolux_rheostat=Part.create(part_number: '31055001',
    description: 'Rheostat Cooker Electrolux',
    quantity_in_stock: '270',
    cost: '3.75')

belling_rheostat=Part.create(part_number: '31055002',
    description: 'Rheostat Cooker Belling',
    quantity_in_stock: '285',
    cost: '5.50')

beko_rheostat=Part.create(part_number: '31055003',
    description: 'Oven Element Cooker Beko',
    quantity_in_stock: '105',
    cost: '1.75')

#fans
hotpoint_fan=Part.create(part_number: '31065000',
    description: 'Fan Cooker Hotpoint',
    quantity_in_stock: '75',
    cost: '13.25')

electrolux_fan=Part.create(part_number: '31065001',
    description: 'Fan Cooker Electrolux',
    quantity_in_stock: '60',
    cost: '11.12')

belling_fan=Part.create(part_number: '31065002',
    description: 'Fan Cooker Belling',
    quantity_in_stock: '80',
    cost: '11.00')

beko_fan=Part.create(part_number: '31065003',
    description: 'Fan Cooker Beko',
    quantity_in_stock: '70',
    cost: '9.80')



#bill of material
##############################
#hotpoint cooker
PartList.create(product_id:hotpoint_cooker.id, part_id:hotpoint_large_ring.id,quantity:'2')
PartList.create(product_id:hotpoint_cooker.id,part_id:hotpoint_small_ring.id,quantity:'2')
PartList.create(product_id:hotpoint_cooker.id,part_id:hotpoint_grill_element.id,quantity:'1')
PartList.create(product_id:hotpoint_cooker.id,part_id:hotpoint_oven_element.id,quantity:'1')
PartList.create(product_id:hotpoint_cooker.id,part_id:hotpoint_rheostat.id,quantity:'6')
PartList.create(product_id:hotpoint_cooker.id,part_id:hotpoint_fan.id,quantity:'1')

#electrolux cooker
PartList.create(product_id:electrolux_cooker.id,part_id:electrolux_large_ring.id,quantity:'2')
PartList.create(product_id:electrolux_cooker.id,part_id:electrolux_small_ring.id,quantity:'2')
PartList.create(product_id:electrolux_cooker.id,part_id:electrolux_grill_element.id,quantity:'1')
PartList.create(product_id:electrolux_cooker.id,part_id:electrolux_oven_element.id,quantity:'1')
PartList.create(product_id:electrolux_cooker.id,part_id:electrolux_rheostat.id,quantity:'6')
PartList.create(product_id:electrolux_cooker.id,part_id:electrolux_fan.id,quantity:'1')

#belling cooker
PartList.create(product_id:belling_cooker.id,part_id:belling_large_ring.id,quantity:'2')
PartList.create(product_id:belling_cooker.id,part_id:belling_small_ring.id,quantity:'2')
PartList.create(product_id:belling_cooker.id,part_id:belling_grill_element.id,quantity:'1')
PartList.create(product_id:belling_cooker.id,part_id:belling_oven_element.id,quantity:'1')
PartList.create(product_id:belling_cooker.id,part_id:belling_rheostat.id,quantity:'6')
PartList.create(product_id:belling_cooker.id,part_id:belling_fan.id,quantity:'1')

#beko cooker
PartList.create(product_id:beko_cooker.id,part_id:beko_large_ring.id,quantity:'2')
PartList.create(product_id:beko_cooker.id,part_id:beko_small_ring.id,quantity:'2')
PartList.create(product_id:beko_cooker.id,part_id:beko_grill_element.id,quantity:'1')
PartList.create(product_id:beko_cooker.id,part_id:beko_oven_element.id,quantity:'1')
PartList.create(product_id:beko_cooker.id,part_id:beko_rheostat.id,quantity:'6')
PartList.create(product_id:beko_cooker.id,part_id:beko_fan.id,quantity:'1')

         



#indesit washing machine
PartList.create(product_id:indesit_washing_machine.id,part_id:indesit_drum.id,quantity:'1')
PartList.create(product_id:indesit_washing_machine.id,part_id:indesit_motor.id,quantity:'1')
PartList.create(product_id:indesit_washing_machine.id,part_id:indesit_drain_pump.id,quantity:'1')
PartList.create(product_id:indesit_washing_machine.id,part_id:indesit_door_seal.id,quantity:'1')
PartList.create(product_id:indesit_washing_machine.id,part_id:indesit_controller.id,quantity:'1')

#bosch washing machine
PartList.create(product_id:bosch_washing_machine.id,part_id:bosch_drum.id,quantity:'1')
PartList.create(product_id:bosch_washing_machine.id,part_id:bosch_bearing.id,quantity:'2')
PartList.create(product_id:bosch_washing_machine.id,part_id:bosch_motor.id,quantity:'1')
PartList.create(product_id:bosch_washing_machine.id,part_id:bosch_drain_pump.id,quantity:'1')
PartList.create(product_id:bosch_washing_machine.id,part_id:bosch_door_seal.id,quantity:'1')
PartList.create(product_id:bosch_washing_machine.id,part_id:bosch_controller.id,quantity:'1')

#hotpoint washing machine
PartList.create(product_id:hotpoint_washing_machine.id,part_id:hotpoint_drum.id,quantity:'1')
PartList.create(product_id:hotpoint_washing_machine.id,part_id:hotpoint_bearing.id,quantity:'2')
PartList.create(product_id:hotpoint_washing_machine.id,part_id:hotpoint_motor.id,quantity:'1')
PartList.create(product_id:hotpoint_washing_machine.id,part_id:hotpoint_drain_pump.id,quantity:'1')
PartList.create(product_id:hotpoint_washing_machine.id,part_id:hotpoint_door_seal.id,quantity:'1')
PartList.create(product_id:hotpoint_washing_machine.id,part_id:hotpoint_controller.id,quantity:'1')

#beko washing machine
PartList.create(product_id:beko_washing_machine.id,part_id:beko_drum.id,quantity:'1')
PartList.create(product_id:beko_washing_machine.id,part_id:beko_bearing.id,quantity:'2')
PartList.create(product_id:beko_washing_machine.id,part_id:beko_drain_pump.id,quantity:'1')
PartList.create(product_id:beko_washing_machine.id,part_id:beko_door_seal.id,quantity:'1')
PartList.create(product_id:beko_washing_machine.id,part_id:beko_controller.id,quantity:'1')
#add enginners
eng1=Engineer.create(name:'John Hodmon', email:'johnhodmon@email.com')     
eng2=Engineer.create(name:'Pat Hogan', email:'phogan@email.com')   
eng3=Engineer.create(name:'Roy Doyle', email:'rdoyle@email.com')   
eng4=Engineer.create(name:'Francis Ryan', email:'uryan@email.com')   
eng5=Engineer.create(name:'Peter Dempsey', email:'pdempsey@email.com')   

#add jobs to customers
################################
job1=Job.create(reported_fault:"Oven not working");
job2=Job.create(reported_fault:"Grill not working");
job3=Job.create(reported_fault:"Noise from machine");
job4=Job.create(reported_fault:"Machine will not turn on");
job5=Job.create(reported_fault:"Machine will not empty");
job6=Job.create(reported_fault:"Ring not working");

#allocate engineers to jobs
job1.engineer=eng1
job2.engineer=eng1
job3.engineer=eng5
job4.engineer=eng4
job5.engineer=eng4
job6.engineer=eng5

#assign the products to jobs (back to front way of doing it but ok for seeding)
hotpoint_cooker.jobs<<job1
hotpoint_cooker.jobs<<job2
indesit_washing_machine.jobs<<job3
indesit_washing_machine.jobs<<job4
beko_washing_machine.jobs<<job5
beko_cooker.jobs<<job6

#add parts used on jobs
JobPart.create(job_id:job1.id,part_id:hotpoint_oven_element.id,quantity:'1')
JobPart.create(job_id:job2.id,part_id:hotpoint_grill_element.id,quantity:'1')
JobPart.create(job_id:job2.id,part_id:hotpoint_rheostat.id,quantity:'2')
JobPart.create(job_id:job3.id,part_id:indesit_bearing.id,quantity:'1')
JobPart.create(job_id:job4.id,part_id:indesit_controller.id,quantity:'1')
JobPart.create(job_id:job5.id,part_id:beko_drain_pump.id,quantity:'1')
JobPart.create(job_id:job6.id,part_id:beko_large_ring.id,quantity:'1')

#invoices
Invoice.create(job_id:job1.id, invoice_number:'inv_5002145')
Invoice.create(job_id:job3.id,invoice_number:'inv_5002147')
Invoice.create(job_id:job5.id,invoice_number:'inv_5002149')
Invoice.create(job_id:job6.id,invoice_number:'inv_5002150')


