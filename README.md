## Task

# Boris Bike
First Makers afternoon challenge! We are to Build a program that will emulate the docking stations, bikes and infrastructure for Boris Bikes.

## Motivation

Main motivations for this project is:
- To learn how to Pair in a driver navigator style 
- Learn to TDD 

## Code style
Ruby-standard-style 
RSPEC testing

## Screenshots
Include logo/demo screenshot etc.

## Tech/framework used
Built with: 

Ruby 
RSPEC 

## Code Example
Show what the library does as concisely as possible, developers should be able to figure out how your project solves their problem by looking at the code example. Make sure the API you are showing off is obvious, and that your code is short and concise.

## Installation
Provide step by step series of examples and explanations about how to get a development env running.

## Tests
Describe and show how to run the tests with code examples.

How to use?
If people like your project they’ll want to learn how they can use it. To do so include step by step guide to use your project.

Contribute
Let people know how they can contribute into your project. A contributing guideline will be a big plus.

Credits
Give proper credits. This could be a link to any repo which inspired you to build this project, any blogposts or links to people who contrbuted in this project.

## Plan 

### User Story 

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available. 

As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.

As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.

As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.

As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).

```

### Domain Model 

|Objects|	Messages|
|-------|-----------|
|Person| |
|System maintainer|| 
|Bike| |
|| working? |
|| report_broken |
|DockingStation| 
||release_bike|
|| - only if bike docked |
|| - only if working |
||return_bike|
|| - if under max_cap|
|| - any condition |
||check_bikes_docked|
|| Max_cap < CONSTANT > 20 dependancy injection| 
