resource "azurerm_resource_group" "sql" {
  name     = "rg-codecampster-sql-prod-001"
  location = "East US"
}

resource "azurerm_sql_server" "sql" {
  name                         = "sqlsvr-codecampster-prod"
  resource_group_name          = "${azurerm_resource_group.sql.name}"
  location                     = "${azurerm_resource_group.sql.location}"
  version                      = "12.0"
  administrator_login          = "${var.sql.admin_login}"
  administrator_login_password = "${var.sql.admin_password}"

  tags = {
    environment = "production"
  }
}