# README

1. Add simple-calendar by bundle

   ```
   $ bundle install
   ```

2. Run rails server

   ```
   $ rails s
   ```

3. Database creation

- At the main page(home), click the 'Show total schedules' link

- In the 'Import total schedules' section, click the 'Choose File' button

- Select 'schedule_file.csv' file in the directory and click the 'Upload Schedules'

- Done

4. Datasets

- Parameters: tutor_id(integer), start_time(datetime), active(integer, 1:available / 2:unavailable)

- 'tutor_id' is from 1 to 5 (so, whole 5 tutors)

- 'start_time' is from 00:00 to 23:30 (48 times of class in one day)

5. How to run

- 'Input your class format' section is for students, which can choose open-class

- 'For tutors' section is for tutors, which can change their class schedules or delete them

- You can check the whole tutors' schedule in the 'Show total schedules' link
