#dbt Note
dbt (Data Build Tool) is a set of tools and workflows for managing your data transformation processes. There are two main products associated with dbt: **dbt Core** and **dbt Cloud**.

dbt Core is the open-source command-line tool that allows you to work with dbt locally on your machine. 

dbt Cloud is another product offered by dbt that provides cloud-based data transformation and collaboration features. While dbt Core is suitable for local development and small teams, dbt Cloud is designed for larger teams and cloud-based data warehouses.

In summary, dbt Core is the core open-source tool for managing your data transformation workflows, and dbt Cloud offers additional features and collaboration capabilities in a cloud-based environment.

---
Here are some key aspects of dbt Core:

#### Project Structure
dbt Core uses a configuration file called `dbt_project.yml` to recognize a directory as a dbt project. This file also contains important project-specific information that guides how dbt operates on your data.

#### Connecting to a Database
You need to create a profile file `(~/.dbt/profiles.yml)` to define your database connection details. You can create this file manually or use `dbt init` to generate it automatically.

For this case, I'm using BigQuery, so I also set up a **service account**.

`dbt debug`: Test your database connection using to ensure it's successful.

#### Performing dbt Runs

`dbt run`: to execute your dbt models. dbt models are essentially SQL queries transformed into data models.
- By default, the materialization of models is set to "view," but you can customize it.
- dbt models can reference each other, allowing for a modular and organized approach to data transformation.

#### Testing

`dbt test`: to run tests specified in your `.yml` files within the models folder to ensure data quality.

#### Documentation Generation

`dbt docs generate`: Generate documentation for your data models by running dbt docs generate. This will create an HTML file that serves as documentation.

`dbt docs serve`: to view the documentation in local browser.

---
### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
