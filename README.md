# WedemyServer

Backend repo. A Springboot + Vue.js 3 clone of Udemy. Uses HttpSession (stored in Redis) + Cookies, for authentication.
Also contains CSRF protection.

## Requirements

- JDK 11+
- MySQL 8
- Redis Server (local or Cloud)
- [Google OAuth Credentials](https://console.developers.google.com/apis/credentials) (for _Sign In With Google_)
- Lombok.

## Important ⚠

Please see the file [application.yml](src/main/resources/application.yml) inside `src/main/resources/`
folder. Place all your necessary Spring application values there. But for _super-sensitive_
info (like Secrets or API Keys), **DON'T PASTE THEM IN THERE DIRECTLY** 🚫. I recommend store them
as [Environmental Variables](https://www.baeldung.com/properties-with-spring) instead, then simply pass them by
reference as `property.name = ${ENV_KEY_NAME}`.

## Databases Used

### MySQL 8

This application uses MySQL 8 (InnoDB Engine) as main database. NOTE: All DateTimes are queried in UTC only❗. (
**MUST MAKE SURE ONLY USE `java.time.Instant` as Type for ALL Date/time fields. Also see point #6 below.**). I have
included a sample `wedemy.sql`
file inside [src/main/resources/](src/main/resources) which contains sample data for COURSES, LESSONS, OBJECTIVES and
schema for ALL other tables. Simply do the following to get started:

1. Make sure you have MySQL 8.x installed. (in terminal or CMD, enter: `mysql --version`)
2. Next, Install MySQL Workbench (version 8+) or use PhpMyAdmin instead (OPTIONAL).
3. CREATE a database called `wedemy`.
4. Then **Import** the file `wedemy.sql` into it.
5. Replace the values of `DB_HOST` `DB_USERNAME` and `DB_PASSWORD` inside _application.properties_ to match your
   database setup. That's it, DONE.
6. To maintain consistent time-zone (UTC) with your Java app, ensure your MySQL connection string has
   parameter `connectionTimeZone=UTC`. See
   _application.yml_ file (line 23).

### Redis

This app uses Spring Session Redis to manage user sessions. I prefer storing sessions server-side rather than using
Stateless JWTs. Did you know Redis.com offers FREE lifetime trial for 1 Redis cloud instance? Check it
out: https://redis.com/try-free/.
(**NOT SPONSORED**). Or, you could simply use locally-installed Redis on your backend server. Just make sure you change
the values inside `application.yml` to match your Redis local or cloud deployment.

