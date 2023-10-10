# WedemyServer

[![Static Badge](https://img.shields.io/badge/API_docs-v1.2-red)](https://longwater1234.github.io/WedemyServer/)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://github.com/Longwater1234/WedemyServer/graphs/commit-activity)
[![License: MIT](https://img.shields.io/github/license/Longwater1234/WedemyServer)](https://github.com/Longwater1234/WedemyServer/blob/master/LICENSE)
[![Static Badge](https://img.shields.io/badge/reference-help.md-orange)](HELP.md)

(Backend repo). Clone of Udemy, an e-learning platform, built using SpringBoot + Vue 3 + Typescript. With CreditCard and
PayPal checkout (both powered by **Braintree Payments**). Uses Spring Security & Spring Session Redis (via cookies[^1]
or sessionID Headers) for auth, instead of stateless JWT Tokens. CSRF protection is enabled. You can easily customize
these settings in [SecurityConfig](src/main/java/com/davistiba/wedemyserver/config/SecurityConfig.java). By default, the
app runs on port 9000.

## Frontend & Live Demo

Click to view [Frontend Repo](https://github.com/Longwater1234/WedemyClient) and live Demo built using Vue 3, Vite and
Typescript. However, you can still use any frontend stack with this project. See
the [API Docs](https://longwater1234.github.io/WedemyServer/) for this project.

## Requirements

- Java 11 or higher
- MySQL 8.0
- Redis Server (latest stable)
- [Google OAuth Credentials](https://developers.google.com/identity/gsi/web/guides/get-google-api-clientid) (for Google
  Login)
- [Braintree Developer](https://developer.paypal.com/braintree/docs) Account + API Keys. (for Payments)
- (OPTIONAL) Free PayPal Business Account.

### Environmental Variables

You MUST set these ENV variables on your System or Container before you launch this SpringBoot app. **💡TIP**: During
dev/test, you can pass them via `args`, OR store inside your IDE: e.g. In either Eclipse or IntelliJ IDE, in the top
toolbar, find the **"Run"** menu > **Edit/Run Configuration** > **Environment** > **Environmental Variables**. Add (+)
each key and its value, then click **Apply**. If using Docker CLI, follow this quick
[official guide.](https://docs.docker.com/engine/reference/commandline/run/#env)

```properties
MYSQL_PASSWORD=
# below are for Google OAuth
GOOGLE_CLIENT_ID=
GOOGLE_CLIENT_SECRET=
# below are for Braintree Payments
BT_MERCHANT_ID=
BT_PUBLIC_KEY=
BT_PRIVATE_KEY=
# For production, set this:
SPRING_PROFILES_ACTIVE=prod
PORT=#{server port for Spring}
```

## Important ⚠

Please examine the files [application.yml](src/main/resources/application.yml) (default),
and [application-prod.yml](src/main/resources/application-prod.yml) (meant for _production_). Replace all the necessary
Spring Application properties with yours. But for sensitive info (like Passwords or API Keys), **DON'T PASTE THEM IN
THERE DIRECTLY**❌ . It's safer to store them as Environmental Variables instead (see section above), then either
declare them as `property.name = ${ENV_KEY_NAME}`, OR refer them directly in your source code as shown
in [BraintreeConfig](src/main/java/com/davistiba/wedemyserver/config/BraintreeConfig.java).


## Quick Start 🚀

Verify you have the requirements listed above, and both your DB's (MySQL & Redis) are up and running. Git clone this repo. Navigate into
this project root. Using your terminal, execute the commands below:

  ```bash
  ./mvnw clean package
  java -jar target/wedemyserver.jar
  ```

If you did everything correctly (including setting the ENV variables above) the app should start and be available at
http://localhost:9000 . Alternatively, you can build the docker image using the provided [Dockerfile](Dockerfile)

## Databases Used

### MySQL 8.0.x

This is the primary database. All DateTimes are stored and queried in UTC only. (**Hint: USE `java.time.Instant` as Type
for all Datetime fields**). Handle timezone conversion on your Frontend! For your convenience, I have included a
[mysqldump file](src/main/resources/data_wedemy.sql) which contains sample data for testing. You may also take a look at
the [ERD diagram](src/main/resources/wedemy_erd.png).

- CREATE new schema called `wedemy` (any name is OK), with charset `utf8mb4`.
- To maintain consistent time-zone (UTC) with your Java app, ensure your JDBC connection URL has
  parameter `connectionTimeZone=UTC`. See example below. For native @Query's, use UTC_TIMESTAMP() or UTC_DATE().

  ```properties
  spring.datasource.url=jdbc:mysql://localhost:3306/wedemy?connectionTimeZone=UTC
  # OR, set this
  spring.jpa.properties.hibernate.jdbc.time_zone=UTC
  ```

### Redis v6.0 (or higher)

This project uses Redis for 2 main tasks: Caching, and Storing login sessions. You can download latest Redis (macOS &
Linux) from https://redis.io/download. Windows users may download the latest native installer (.msi)
from [this GitHub repo](https://github.com/tporadowski/redis/releases). Alternatively, you could pull its official
Docker image.
Another option you could try is Redis Cloud at: https://redis.com/try-free/. Remember to replace Redis credentials
inside application.yml (or in your ENV variables).

| Tip 💡 | Redis now has an OFFICIAL cross-platform desktop GUI client: RedisInsight. Download it free [here](https://redis.com/redis-enterprise/redis-insight/) |
|--------|:------------------------------------------------------------------------------------------------------------------------------------------------------|


## Payments Handling

All payments are securely handled by **Braintree Payments** (owned by PayPal), which also supports cards, Apple Pay,
GooglePay, Venmo and many other methods. This project implements Credit-Card and PayPal Checkout only, in _Sandbox_
(Dev) mode: **No actual money is deducted at Checkout**. Make sure you obtain a set of 3 API Keys from
your own Braintree Dev Account and store them as ENV variables: `BT_MERCHANT_ID`, `BT_PUBLIC_KEY` and `BT_PRIVATE_KEY`.
For Braintree tutorials and samples, please check their [official docs](https://developer.paypal.com/braintree/docs).

---

[^1]: In production, for Browser clients, ensure both your Backend and Frontend share the same _ROOT_ domain (same-site
policy), AND set property `session.cookie.Secure=true` (strictly https) for Session Cookies to work properly. Learn
more at [WebDev](https://web.dev/samesite-cookies-explained/). Alternatively, you can replace Cookies **entirely** with
special Header X-AUTH-TOKEN (by Spring; expires too). See file SecurityConfig.java.
