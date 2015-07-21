### User Stories ###

```
DONE:

As a member of the public,
So that I can get across town,
I'd like to get a working bike from a docking station.

As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.

As a member of the public,
So that I am not charged for longer than necessary,
I'd like to return a bike to a docking station.

As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).

As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations to have a default capacity of 20 bikes.

As a maintainer of the system,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like vans to take broken bikes from docking stations and deliver them to garages to be fixed.

IN PROGRESS:

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like vans to collect working bikes from garages and distribute them to docking stations.
```

#### Manual irb feature tests
Run `irb`, then:
```ruby
2.2.2 :001 > bike = Bike.new
2.2.2 :002 > bike.report_broken
2.2.2 :003 > station = DockingStation.new
2.2.2 :004 > station.dock bike
2.2.2 :005 > van = Van.new
2.2.2 :006 > van.get_bikes_from station
2.2.2 :007 > garage = Garage.new
2.2.2 :008 > van.give_bikes_to garage
2.2.2 :009 > garage.fix_bikes
2.2.2 :010 > van.get_bikes_from garage
2.2.2 :011 > van
2.2.2 :012 > van.give_biks_to station
2.2.2 :013 > station

```
Goal: station will now contain fixed bike.
