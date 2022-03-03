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
  !(https://user-images.githubusercontent.com/87465029/156634924-9e08bec8-984a-4726-9099-edb2af8fd581.png)
- In the 'Import total schedules' section, click the 'Choose File' button
  !(https://user-images.githubusercontent.com/87465029/156635088-837d48f7-9d9b-4115-b507-fcd0bf1ce11e.png)
- Select 'schedule_file.csv' file in the directory and click the 'Upload Schedules'
- Done

4. Datasets

- Parameters: tutor_id(integer), start_time(datetime), active(integer, 1:available / 2:unavailable)
- 'tutor_id' is from 1 to 5 (so, whole 5 tutors)
- 'start_time' is from 00:00 to 23:30 (48 times of class in one day)

5. How to run

- 'Input your class format' section is for students, which can choose open-class
  !(https://user-images.githubusercontent.com/87465029/156635195-06c4cb91-c7f8-4c6d-9410-b8c9a7cf2359.png)
- 'For tutors' section is for tutors, which can change their class schedules or delete them
  !(https://user-images.githubusercontent.com/87465029/156635281-2951306e-1fe5-4c3e-9e91-83428e6e75c8.png)
- You can check the whole tutors' schedule in the 'Show total schedules' link
