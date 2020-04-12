# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

athlete_1 = Athlete.create([{name: 'Jenna'}])
athlete_2 = Athlete.create([{name: 'Lucy'}])
athlete_3 = Athlete.create([{name: 'Tom'}])

body_part_1 = BodyPart.create([{name:'Lower body'}])
body_part_2 = BodyPart.create([{name: 'Upper body'}])
body_part_3 = BodyPart.create([{name: 'Core'}])
body_part_4 = BodyPart.create([{name: 'Cardio'}])
body_part_5 = BodyPart.create([{name: 'Flexibility'}])


workout_1 = Workout.create([{name: 'Glute it', description: '10 minutes on Stairmaster, 10 dumbell dead-lifts', body_part: body_part_1, athlete: athlete_1 }])

workout_2 = Workout.create([{name: 'Top Arms', description: '10 dumbbell row x 3, 10 dumbbell lifts x 3', body_part: body_part_2, athlete: athlete_2}])

workout_3=Workout.create([{name: 'Shredded back', description: 'I-Y-T. Sets 3 Reps 3-3-3. TRX row. Sets 3 Reps 8. Single-arm kettlebell row. Sets 3 Reps 8 each arm. Renegade row. Sets 3 Reps 6 each arm.  Bent-over row. Sets 3 Reps 8.Single-arm cable row. Sets 3 Reps 6 each arm. Chin-up. Sets 3 Reps 6.', body_part: body_part_2, athlete: athlete_3}])
