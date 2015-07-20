# Boris Bikes 2 #
*by [Gabe](https://github.com/GabeMaker) and [Mark](https://github.com/Gwasanaethau)*

Practicing pairing, OOD and TDD by making a model of the 'Boris Bike' cycle hire scheme. 

- Unit testing in RSpec
- Feature testing using irb to manually simulate behaviour from user stories

Save time and automatically require lib/ files: 

1. Go to home directory. 
2. create a file '.irbrc' 
3. Paste this into .irbrc: **Dir['./lib/*.rb'].each { |f| require f }** 


## Refactoring needed:

- use module to DRY-out duplicated functionality in bike containing classes.
- investigate `release_bike` and `release_bikes` method for DockingStation.


**sometimes pairing on a shared laptop so not all of Mark's commits are attributed to him*
