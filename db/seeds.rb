

Booking.destroy_all
Flight.destroy_all
Plane.destroy_all
User.destroy_all


p1 = Plane.create :name => 'British Airways', :aisle => 5, :seat => 6
p2 = Plane.create :name => 'Singapore Airlines', :aisle => 5, :seat => 6
p3 = Plane.create :name => 'Qantas', :aisle => 5, :seat => 6
p4 = Plane.create :name => 'Jetstar', :aisle => 5, :seat => 6
p5 = Plane.create :name => 'Virgin', :aisle => 5, :seat => 6
p6 = Plane.create :name => 'United Airline', :aisle => 5, :seat => 6
p7 = Plane.create :name => 'Malaysian Airlines', :aisle => 5, :seat => 6
p8 = Plane.create :name => 'RyanAir', :aisle => 5, :seat => 6
p9 = Plane.create :name => 'Tiger', :aisle => 5, :seat => 6
p10 = Plane.create :name => 'Air France', :aisle => 5, :seat => 6

f1 = Flight.create :name => 'BA123', :date => '2015-6-20', :origin => 'Sydney', :destination => 'Melbourne' 
f2 = Flight.create :name => 'SA123', :date => '2015-6-23', :origin => 'Perth', :destination => 'Melbourne' 
f3 = Flight.create :name => 'QN123', :date => '2015-6-22', :origin => 'Brisbane', :destination => 'Perth' 
f4 = Flight.create :name => 'JS123', :date => '2015-6-23', :origin => 'Cairns', :destination => 'Sydney' 
f5 = Flight.create :name => 'VA123', :date => '2015-6-10', :origin => 'Uluru', :destination => 'Melbourne' 
f6 = Flight.create :name => 'UA123', :date => '2015-5-20', :origin => 'Townsville', :destination => 'Cairns' 
f7 = Flight.create :name => 'BA455', :date => '2015-5-20', :origin => 'Sydney', :destination => 'Melbourne' 
f8 = Flight.create :name => 'SA456', :date => '2015-4-11', :origin => 'Cairns', :destination => 'Melbourne' 
f9 = Flight.create :name => 'QN456', :date => '2015-6-20', :origin => 'Melbourne', :destination => 'Brisbane' 
f10 = Flight.create :name => 'BA789', :date => '2015-6-22', :origin => 'Sydney', :destination => 'Melbourne'

b1 = Booking.create :aisle => 1, :seat => 3
b2 = Booking.create :aisle => 2, :seat => 2
b3 = Booking.create :aisle => 3, :seat => 3
b4 = Booking.create :aisle => 4, :seat => 1
b5 = Booking.create :aisle => 5, :seat => 3
b6 = Booking.create :aisle => 3, :seat => 4
b7 = Booking.create :aisle => 4, :seat => 1
b8 = Booking.create :aisle => 2, :seat => 3
b9 = Booking.create :aisle => 2, :seat => 4
b10 = Booking.create :aisle => 1, :seat => 3

u1 = User.create :name => "Tom", :email => "1@test.com"
u2 = User.create :name => "Harry", :email => "2@test.com"

f1.plane_id = p1.id
f2.plane_id = p2.id
f3.plane_id = p3.id
f4.plane_id = p4.id
f5.plane_id = p5.id
f6.plane_id = p6.id
f7.plane_id = p1.id
f8.plane_id = p2.id
f9.plane_id = p3.id
f10.plane_id = p1.id

f1.save()
f2.save()
f3.save()
f4.save()
f5.save()
f6.save()
f7.save()
f8.save()
f9.save()
f10.save()

b1.flight_id = f1.id
b2.flight_id = f2.id
b3.flight_id = f1.id
b4.flight_id = f3.id
b5.flight_id = f1.id
b6.flight_id = f4.id
b7.flight_id = f3.id
b8.flight_id = f4.id
b9.flight_id = f1.id
b10.flight_id = f2.id

b1.user_id = 1
b2.user_id = 2
b3.user_id = 1
b4.user_id = 2
b5.user_id = 1
b6.user_id = 2
b7.user_id = 1
b8.user_id = 2
b9.user_id = 1
b10.user_id = 2

b1.save()
b2.save()
b3.save()
b4.save()
b5.save()
b6.save()
b7.save()
b8.save()
b9.save()
b10.save()



