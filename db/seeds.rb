 
 c1=Customer.create(name:'Stella Byrne', 
        email:'stellabyrne@jmail.com',
       
         street: "2 south street",
         town: "New Ross",
         county: "Wexford",
         phone: "0519242233",
         lat_lng:"52.3954146,-6.9463167")

   c2=Customer.create(name:'Roy Murphy', 
        email:'roymurphy@jmail.com',
       
         street: "2 bride street",
         town: "Wexford",
         county: "Wexford",
         phone: "0539124528",
         lat_lng:"52.3357881,-6.4620682")

     c3=Customer.create(name:'Ciaran Meaney', 
        email:'ciaranmeaney@jmail.com',
       
         street: "15 Patrick Street",
         town: "Enniscorthy",
         county: "Wexford",
         phone: "0539255687",
         lat_lng:"52.5024791,-6.5771034,17")

      c4=Customer.create(name:'Rie Nolan', 
        email:'roynolan@jmail.com',
       
         street: "Ballyhack",
         town: "New Ross",
         county: "Wexford",
         phone: "0513892305",
         lat_lng:"52.2484872,-6.9729682,15")

         c5=Customer.create(name:'Mary Hennessey', 
        email:'mhennessey@jmail.com',
       
         street: "16 The Faythe",
         town: "Wexford",
         county: "Wexford",
         phone: "0539155876",
         lat_lng:"52.3310768,-6.4573347")

             c6=Customer.create(name:'Olly Murphy', 
        email:'omurphy@jmail.com',
       
         street: "Beach View",
         town: "Duncannon",
         county: "Wexford",
         phone: "0515587657",
         lat_lng:"52.220624,-6.9413368")

 #add manufacturers
   

 

      beko=Manufacturer.create(name:" Beko", street:"1 Greenhill Crescent",town:"Watford",
        county:"Hertz", country:"England", phone:"00448009172018",email:"info@beko.com")

      electrolux=Manufacturer.create(name:"Electrolux", street:"Unit 4 Whitemill Industrial Est.",town:"Wexford",
        county:"Wexford", country:"Ireland", phone:"0053539126300",email:"info@electrolux.com")

      belling=Manufacturer.create(name:" Belling", street:"Stoney Lane",town:"Prescot ",
        county:"Merseyside", country:"England", phone:"00443448153746",email:"info@belling.com")

      indesit=Manufacturer.create(name:" Indesit", street:"Morley Way,",town:"Peterborough",
        county:"Cambridgeshire", country:"England", phone:"00441733568989",email:"info@beko.com")

      hotpoint=Manufacturer.create(name:" Hotpoint", street:"25 Kenley Crescent",town:"Cork",
        county:"Cork", country:"Ireland", phone:"003532155987552",email:"info@hotpoint.ie")

      bosch=Manufacturer.create(name:"Bosch", street:"Postfach 30 02 40",town:"Stuttgart",
        county:"Hertz", country:"Germany", phone:"00497118110",email:"info@bosch.de")

 



 #products  

  hotpoint_cooker=Product.create(manufacturer_id:hotpoint.id,
        product_number:'HCK1489', 
        description:'Cooker, free standing, 60 CM, Electric')     

    electrolux_cooker=Product.create(manufacturer_id:electrolux.id,
        product_number:'ECK6461', 
        description:'Cooker, free standing, 60 CM, Electric')

    belling_cooker=Product.create(manufacturer_id:belling.id,
        product_number:'FSE60DOBLK', 
        description:'Cooker, double oven, electric')


    beko_cooker=Product.create(manufacturer_id:beko.id,
        product_number:'BSVC563AK', 
        description:'Cooker, double oven, electric')

    indesit_washing_machine=Product.create(manufacturer_id:indesit.id,
        product_number:'IWSD61251', 
        description:'Washing machine, 6KG, A+') 


    bosch_washing_machine=Product.create(manufacturer_id:bosch.id,
        product_number:'WAT24460GB', 
        description:'Washing machine, 8KG')      

    hotpoint_washing_machine=Product.create(manufacturer_id:hotpoint.id,
        product_number:'WMBF944G', 
        description:'Washing machine, 9KG, A+++, 1400 Spin')

        beko_washing_machine=Product.create(manufacturer_id:beko.id,
        product_number:'WMG 11464', 
        description:'Washing Machine, 11KG, 1400 Spin')
      




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

beko_drum=Part.create(part_number: '31005003',
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



#invoices

invoice1=Invoice.create(invoice_number:'inv_5002145')
invoice3=Invoice.create(invoice_number:'inv_5002147')
invoice4=Invoice.create(invoice_number:'inv_5002149')
invoice6=Invoice.create(invoice_number:'inv_5002150')

report1=Report.create(engineer_report:'Replaced oven element')
report2=Report.create(engineer_report:'Replaced drum bearings and rebalanced machine')
report3=Report.create(engineer_report:'Replaced controller rewired door switch')
report4=Report.create(engineer_report:'replaced ring and rheostat.')
report5=Report.create(engineer_report:'rewiring required')
report6=Report.create(engineer_report:'replaced drain pump')
#create customer products
cp1=CustomerProduct.create(customer_id:c1.id,product_id:hotpoint_cooker.id, serial_number:'12345678')
cp2=CustomerProduct.create(customer_id:c1.id,product_id:indesit_washing_machine.id, serial_number:'12345679')
cp3=CustomerProduct.create(customer_id:c2.id,product_id:beko_cooker.id, serial_number:'12345680')
cp4=CustomerProduct.create(customer_id:c3.id,product_id:belling_cooker.id, serial_number:'12345681')
cp5=CustomerProduct.create(customer_id:c3.id,product_id:hotpoint_washing_machine.id, serial_number:'12345682')
cp6=CustomerProduct.create(customer_id:c4.id,product_id:beko_washing_machine.id, serial_number:'12345683')
cp7=CustomerProduct.create(customer_id:c5.id,product_id:electrolux_cooker.id, serial_number:'12345684')
cp8=CustomerProduct.create(customer_id:c6.id,product_id:bosch_washing_machine.id, serial_number:'12345685')

#timings
travel_start_1=Time.new(2016,3,1,10,0,0,0)
travel_end_1=Time.new(2016,3,1,11,0,0,0)
labour_start_1=Time.new(2016,3,1,11,30,0,0)
labour_end_1=Time.new(2016,3,1,12,30,0,0)

travel_start_2=Time.new(2016,3,1,13,0,0,0)
travel_end_2=Time.new(2016,3,1,13,30,0,0)
labour_start_2=Time.new(2016,3,1,13,30,0,0)
labour_end_2=Time.new(2016,3,1,15,0,0,0)

travel_start_3=Time.new(2016,3,2,10,0,0,0)
travel_end_3=Time.new(2016,3,2,11,0,0,0)
labour_start_3=Time.new(2016,3,2,11,30,0,0)
labour_end_3=Time.new(2016,3,2,12,30,0,0)

travel_start_4=Time.new(2016,3,2,13,0,0,0)
travel_end_4=Time.new(2016,3,2,13,30,0,0)
labour_start_4=Time.new(2016,3,2,13,30,0,0)
labour_end_4=Time.new(2016,3,2,15,0,0,0)

travel_start_5=Time.new(2016,3,3,10,0,0,0)
travel_end_5=Time.new(2016,3,3,11,0,0,0)
labour_start_5=Time.new(2016,3,3,11,30,0,0)
labour_end_5=Time.new(2016,3,3,12,30,0,0)

travel_start_6=Time.new(2016,3,3,13,0,0,0)
travel_end_6=Time.new(2016,3,3,13,30,0,0)
labour_start_6=Time.new(2016,3,3,13,30,0,0)
labour_end_6=Time.new(2016,3,3,15,0,0,0)
#create jobs
################################
job1=Job.create(reported_fault:"Oven not working",status:'allocated',allocation_date:'2016-05-20');
job2=Job.create(reported_fault:"Grill not working",status:'unallocated');
job3=Job.create(reported_fault:"Noise from machine",status:'allocated',allocation_date:'2016-05-20');
job4=Job.create(reported_fault:"Machine will not turn on",status:'allocated',allocation_date:'2016-05-20');
job5=Job.create(reported_fault:"Machine will not empty",status:'unallocated');
job6=Job.create(reported_fault:"Ring not working",status:'allocated',allocation_date:'2016-05-20');
job7=Job.create(reported_fault:"Nothing working on cooker",status:'allocated',allocation_date:'2016-05-20');
job8=Job.create(reported_fault:"Machine full of water",status:'allocated',allocation_date:'2016-05-20');
job9=Job.create(reported_fault:"Machine leaking",status:'allocated',allocation_date:'2016-05-20');



#invoice jobs
job1.invoice=invoice1
job3.invoice=invoice3
job4.invoice=invoice4
job6.invoice=invoice6

job1.report=report1
job3.report=report2
job4.report=report3
job6.report=report4
job7.report=report5
job8.report=report6
#users (admin and engineers)
    u1=OfficeAdministrator.create(name: 'Edel Dodd', email:'edodd@servicemanager.ie',password:'secret',password_confirmation:'secret')
  u2=Engineer.create(name: 'John Hodmon', email:'jhodmon@servicemanager.ie',password:'secret',password_confirmation:'secret')
  u3=Engineer.create(name: 'Pat Hogan', email:'phogan@servicemanager.ie',password:'secret',password_confirmation:'secret')
  u4=Engineer.create(name: 'Roy Doyle', email:'rdoyle@servicemanager.ie',password:'secret',password_confirmation:'secret')
  u5=Engineer.create(name: 'Francis Ryan', email:'fryan@servicemanager.ie',password:'secret',password_confirmation:'secret')
  u6=Engineer.create(name: 'Peter Dempsey', email:'pdempsey@servicemanager.ie',password:'secret',password_confirmation:'secret')





#allocate engineers to jobs
job1.engineer=u2
job2.engineer=u2
job3.engineer=u6
job4.engineer=u5
job5.engineer=u5
job6.engineer=u6
job7.engineer=u2
job8.engineer=u4

#assign the products to jobs (back to front way of doing it but ok for seeding)
cp1.jobs<<job1
cp1.jobs<<job2
cp2.jobs<<job3
cp8.jobs<<job4
cp6.jobs<<job5
cp3.jobs<<job6
cp7.jobs<<job7
cp8.jobs<<job8
cp5.jobs<<job9

#add parts used on jobs
JobPart.create(job_id:job1.id,part_id:hotpoint_oven_element.id,quantity:'1')
JobPart.create(job_id:job3.id,part_id:indesit_bearing.id,quantity:'1')
JobPart.create(job_id:job4.id,part_id:bosch_controller.id,quantity:'1')
JobPart.create(job_id:job8.id,part_id:bosch_drain_pump.id,quantity:'1')









