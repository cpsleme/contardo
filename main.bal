import ballerina/time;

# Accounts.
#
# + id - field description  
# + companyId - field description  
# + name - field description  
# + number - field description  
# + currencyCode - field description  
# + openingBalance - field description  
# + bankName - field description  
# + bankPhone - field description  
# + bankAddress - field description  
# + enabled - field description  
# + createdBy - field description  
# + createdFrom - field description  
# + createdAt - field description  
# + updatedAt - field description  
# + deletedAt - field description
public type Account record {|
    int id;
    int companyId;
    string name;
    string number;
    string currencyCode;
    decimal openingBalance = 0.0;
    string? bankName?;
    string? bankPhone?;
    string? bankAddress?;
    boolean enabled = true;
    int? createdBy?;
    string? createdFrom?;
    time:Utc createdAt;
    time:Utc updatedAt;
    time:Utc? deletedAt?;
|};

# Categories.
#
# + id - field description  
# + companyId - field description  
# + name - field description  
# + 'type - field description  
# + color - field description  
# + enabled - field description  
# + createdBy - field description  
# + createdFrom - field description  
# + createdAt - field description  
# + updatedAt - field description  
# + deletedAt - field description
public type Category record {|
    int id;
    int companyId;
    string name;
    string 'type;
    string color;
    boolean enabled = true;
    int? createdBy?;
    string? createdFrom?;
    time:Utc createdAt;
    time:Utc updatedAt;
    time:Utc? deletedAt?;
|};

# Companies.
#
# + id - field description  
# + domain - field description  
# + enabled - field description  
# + createdBy - field description  
# + createdFrom - field description  
# + createdAt - field description  
# + updatedAt - field description  
# + deletedAt - field description
public type Company record {|
    int id;
    string? domain?; // Domain agora pode ser nulo
    boolean enabled = true;
    int? createdBy?;
    string? createdFrom?;
    time:Utc createdAt;
    time:Utc updatedAt;
    time:Utc? deletedAt?;
|};

# Contacts.
#
# + id - field description  
# + companyId - field description  
# + 'type - field description  
# + name - field description  
# + email - field description  
# + userId - field description  
# + taxNumber - field description  
# + phone - field description  
# + address - field description  
# + city - field description  
# + zipCode - field description  
# + state - field description  
# + country - field description  
# + website - field description  
# + currencyCode - field description  
# + enabled - field description  
# + reference - field description  
# + createdFrom - field description  
# + createdBy - field description  
# + createdAt - field description  
# + updatedAt - field description  
# + deletedAt - field description
public type Contact record {|
    int id;
    int companyId;
    string 'type;
    string name;
    string? email?;
    int? userId?;
    string? taxNumber?;
    string? phone?;
    string? address?;
    string? city?;
    string? zipCode?;
    string? state?;
    string? country?;
    string? website?;
    string currencyCode;
    boolean enabled = true;
    string? reference?;
    string? createdFrom?;
    int? createdBy?;
    time:Utc createdAt;
    time:Utc updatedAt;
    time:Utc? deletedAt?;
|};

# Invoices.
#
# + id - field description  
# + companyId - field description  
# + invoiceNumber - field description  
# + orderNumber - field description  
# + invoiceStatusCode - field description  
# + invoicedAt - field description  
# + dueAt - field description  
# + amount - field description  
# + currencyCode - field description  
# + currencyRate - field description  
# + categoryId - field description  
# + customerId - field description  
# + customerName - field description  
# + customerEmail - field description  
# + customerTaxNumber - field description  
# + customerPhone - field description  
# + customerAddress - field description  
# + notes - field description  
# + parentId - field description  
# + createdAt - field description  
# + updatedAt - field description  
# + deletedAt - field description
public type Invoice record {|
    int id;
    int companyId;
    string invoiceNumber;
    string? orderNumber?;
    string invoiceStatusCode;
    time:Utc invoicedAt;
    time:Utc dueAt;
    decimal amount;
    string currencyCode;
    decimal currencyRate;
    int categoryId = 1;
    int customerId;
    string customerName;
    string? customerEmail?;
    string? customerTaxNumber?;
    string? customerPhone?;
    string? customerAddress?;
    string? notes?;
    int parentId = 0;
    time:Utc createdAt;
    time:Utc updatedAt;
    time:Utc? deletedAt?;
|};

# Invoice Histories.
#
# + id - field description  
# + companyId - field description  
# + invoiceId - field description  
# + statusCode - field description  
# + notify - field description  
# + description - field description  
# + createdAt - field description  
# + updatedAt - field description  
# + deletedAt - field description
public type InvoiceHistory record {|
    int id;
    int companyId;
    int invoiceId;
    string statusCode;
    boolean notify;
    string? description?;
    time:Utc createdAt;
    time:Utc updatedAt;
    time:Utc? deletedAt?;
|};

# Invoice Item Taxes.
#
# + id - field description  
# + companyId - field description  
# + invoiceId - field description  
# + invoiceItemId - field description  
# + taxId - field description  
# + name - field description  
# + amount - field description  
# + createdAt - field description  
# + updatedAt - field description  
# + deletedAt - field description
public type InvoiceItemTax record {|
    int id;
    int companyId;
    int invoiceId;
    int invoiceItemId;
    int taxId;
    string name;
    decimal amount = 0.0;
    time:Utc createdAt;
    time:Utc updatedAt;
    time:Utc? deletedAt?;
|};

# Invoice Status.
#
# + id - field description  
# + companyId - field description  
# + name - field description  
# + code - field description  
# + createdAt - field description  
# + updatedAt - field description  
# + deletedAt - field description
public type InvoiceStatus record {|
    int id;
    int companyId;
    string name;
    string code;
    time:Utc createdAt;
    time:Utc updatedAt;
    time:Utc? deletedAt?;
|};

# Invoice Totals.
#
# + id - field description  
# + companyId - field description  
# + invoiceId - field description  
# + code - field description  
# + name - field description  
# + amount - field description  
# + sortOrder - field description  
# + createdAt - field description  
# + updatedAt - field description  
# + deletedAt - field description
public type InvoiceTotal record {|
    int id;
    int companyId;
    int invoiceId;
    string? code?;
    string name;
    decimal amount;
    int sortOrder;
    time:Utc createdAt;
    time:Utc updatedAt;
    time:Utc? deletedAt?;
|};

# Currencies.
#
# + id - field description  
# + companyId - field description  
# + name - field description  
# + code - field description  
# + rate - field description  
# + precision - field description  
# + symbol - field description  
# + symbolFirst - field description  
# + decimalMark - field description  
# + thousandsSeparator - field description  
# + enabled - field description  
# + createdBy - field description  
# + createdFrom - field description  
# + createdAt - field description  
# + updatedAt - field description  
# + deletedAt - field description
public type Currency record {|
    int id;
    int companyId;
    string name;
    string code;
    decimal rate;
    string? precision?;
    string? symbol?;
    int symbolFirst = 1;
    string? decimalMark?;
    string? thousandsSeparator?;
    boolean enabled = true;
    int? createdBy?;
    string? createdFrom?;
    time:Utc createdAt;
    time:Utc updatedAt;
    time:Utc? deletedAt?;
|};

# Dashboards.
#
# + id - field description  
# + companyId - field description  
# + name - field description  
# + enabled - field description  
# + createdFrom - field description  
# + createdBy - field description  
# + createdAt - field description  
# + updatedAt - field description  
# + deletedAt - field description
public type Dashboard record {|
    int id;
    int companyId;
    string name;
    boolean enabled = true;
    string? createdFrom?;
    int? createdBy?;
    time:Utc createdAt;
    time:Utc updatedAt;
    time:Utc? deletedAt?;
|};

# User Dashboards.
#
# + userId - field description  
# + dashboardId - field description
public type UserDashboard record {|
    int userId;
    int dashboardId;
|};

# Documents.
#
# + id - field description  
# + companyId - field description  
# + 'type - field description  
# + documentNumber - field description  
# + orderNumber - field description  
# + status - field description  
# + issuedAt - field description  
# + dueAt - field description  
# + amount - field description  
# + currencyCode - field description  
# + currencyRate - field description  
# + categoryId - field description  
# + contactId - field description  
# + contactName - field description  
# + contactEmail - field description  
# + contactTaxNumber - field description  
# + contactPhone - field description  
# + contactAddress - field description  
# + contactCity - field description  
# + contactZipCode - field description  
# + contactState - field description  
# + contactCountry - field description  
# + notes - field description  
# + footer - field description  
# + parentId - field description  
# + createdFrom - field description  
# + createdBy - field description  
# + createdAt - field description  
# + updatedAt - field description  
# + deletedAt - field description
public type Document record {|
    int id;
    int companyId;
    string 'type;
    string documentNumber;
    string? orderNumber?;
    string status;
    time:Utc issuedAt;
    time:Utc dueAt;
    decimal amount;
    string currencyCode;
    decimal currencyRate;
    int categoryId = 1;
    int contactId;
    string contactName;
    string? contactEmail?;
    string? contactTaxNumber?;
    string? contactPhone?;
    string? contactAddress?;
    string? contactCity?;
    string? contactZipCode?;
    string? contactState?;
    string? contactCountry?;
    string? notes?;
    string? footer?;
    int parentId = 0;
    string? createdFrom?;
    int? createdBy?;
    time:Utc createdAt;
    time:Utc updatedAt;
    time:Utc? deletedAt?;
|};

# Document History.
#
# + id - field description  
# + companyId - field description  
# + 'type - field description  
# + documentId - field description  
# + status - field description  
# + notify - field description  
# + description - field description  
# + createdFrom - field description  
# + createdBy - field description  
# + createdAt - field description  
# + updatedAt - field description  
# + deletedAt - field description
public type DocumentHistory record {|
    int id;
    int companyId;
    string 'type;
    int documentId;
    string status;
    boolean notify;
    string? description?;
    string? createdFrom?;
    int? createdBy?;
    time:Utc createdAt;
    time:Utc updatedAt;
    time:Utc? deletedAt?;
|};

# Document Items.
#
# + id - field description  
# + companyId - field description  
# + 'type - field description  
# + documentId - field description  
# + itemId - field description  
# + name - field description  
# + description - field description  
# + sku - field description  
# + quantity - field description  
# + price - field description  
# + tax - field description  
# + discountType - field description  
# + discountRate - field description  
# + total - field description  
# + createdFrom - field description  
# + createdBy - field description  
# + createdAt - field description  
# + updatedAt - field description  
# + deletedAt - field description
public type DocumentItem record {|
    int id;
    int companyId;
    string 'type;
    int documentId;
    int? itemId?;
    string name;
    string? description?;
    string? sku?;
    decimal quantity;
    decimal price;
    decimal tax = 0.0;
    string discountType = "normal";
    decimal discountRate = 0.0;
    decimal total;
    string? createdFrom?;
    int? createdBy?;
    time:Utc createdAt;
    time:Utc updatedAt;
    time:Utc? deletedAt?;
|};

# Document Item Taxes.
#
# + id - field description  
# + companyId - field description  
# + 'type - field description  
# + documentId - field description  
# + documentItemId - field description  
# + taxId - field description  
# + name - field description  
# + amount - field description  
# + createdFrom - field description  
# + createdBy - field description  
# + createdAt - field description  
# + updatedAt - field description  
# + deletedAt - field description
public type DocumentItemTax record {|
    int id;
    int companyId;
    string 'type;
    int documentId;
    int documentItemId;
    int taxId;
    string name;
    decimal amount = 0.0;
    string? createdFrom?;
    int? createdBy?;
    time:Utc createdAt;
    time:Utc updatedAt;
    time:Utc? deletedAt?;
|};

# Document Totals.
#
# + id - field description  
# + companyId - field description  
# + 'type - field description  
# + documentId - field description  
# + code - field description  
# + name - field description  
# + amount - field description  
# + sortOrder - field description  
# + createdFrom - field description  
# + createdBy - field description  
# + createdAt - field description  
# + updatedAt - field description  
# + deletedAt - field description
public type DocumentTotal record {|
    int id;
    int companyId;
    string 'type;
    int documentId;
    string? code?;
    string name;
    decimal amount;
    int sortOrder;
    string? createdFrom?;
    int? createdBy?;
    time:Utc createdAt;
    time:Utc updatedAt;
    time:Utc? deletedAt?;
|};

# Items.
#
# + id - field description  
# + companyId - field description  
# + name - field description  
# + sku - field description  
# + description - field description  
# + salePrice - field description  
# + purchasePrice - field description  
# + quantity - field description  
# + categoryId - field description  
# + taxId - field description  
# + enabled - field description  
# + createdBy - field description  
# + createdFrom - field description  
# + createdAt - field description  
# + updatedAt - field description  
# + deletedAt - field description
public type Item record {|
    int id;
    int companyId;
    string name;
    string? sku?;
    string? description?;
    decimal salePrice;
    decimal purchasePrice;
    int quantity = 1;
    int? categoryId?;
    int? taxId?;
    boolean enabled = true;
    int? createdBy?;
    string? createdFrom?;
    time:Utc createdAt;
    time:Utc updatedAt;
    time:Utc? deletedAt?;
|};

# Item Taxes.
#
# + id - field description  
# + companyId - field description  
# + itemId - field description  
# + taxId - field description  
# + createdFrom - field description  
# + createdBy - field description  
# + createdAt - field description  
# + updatedAt - field description  
# + deletedAt - field description
public type ItemTax record {|
    int id;
    int companyId;
    int itemId;
    int? taxId?;
    string? createdFrom?;
    int? createdBy?;
    time:Utc createdAt;
    time:Utc updatedAt;
    time:Utc? deletedAt?;
|};

# Reconciliations.
#
# + id - field description  
# + companyId - field description  
# + accountId - field description  
# + startedAt - field description  
# + endedAt - field description  
# + closingBalance - field description  
# + reconciled - field description  
# + createdBy - field description  
# + createdFrom - field description  
# + createdAt - field description  
# + updatedAt - field description  
# + deletedAt - field description
public type Reconciliation record {|
    int id;
    int companyId;
    int accountId;
    time:Utc startedAt;
    time:Utc endedAt;
    decimal closingBalance = 0.0;
    boolean reconciled;
    int? createdBy?;
    string? createdFrom?;
    time:Utc createdAt;
    time:Utc updatedAt;
    time:Utc? deletedAt?;
|};

# Recurring.
#
# + id - field description  
# + companyId - field description  
# + frequency - field description  
# + interval - field description  
# + startedAt - field description  
# + count - field description  
# + createdBy - field description  
# + createdFrom - field description  
# + createdAt - field description  
# + updatedAt - field description  
# + deletedAt - field description
public type Recurring record {|
    int id;
    int companyId;
    string frequency;
    int interval = 1;
    time:Utc startedAt;
    int count = 0;
    int? createdBy?;
    string? createdFrom?;
    time:Utc createdAt;
    time:Utc updatedAt;
    time:Utc? deletedAt?;
|};

# Reports.
#
# + id - field description  
# + companyId - field description  
# + 'class - field description  
# + name - field description  
# + description - field description  
# + settings - field description  
# + createdBy - field description  
# + createdFrom - field description  
# + createdAt - field description  
# + updatedAt - field description  
# + deletedAt - field description
public type Report record {|
    int id;
    int companyId;
    string 'class;
    string name;
    string description;
    string? settings?;
    int? createdBy?;
    string? createdFrom?;
    time:Utc createdAt;
    time:Utc updatedAt;
    time:Utc? deletedAt?;
|};

# Taxes.
#
# + id - field description  
# + companyId - field description  
# + name - field description  
# + rate - field description  
# + 'type - field description  
# + enabled - field description  
# + createdBy - field description  
# + createdFrom - field description  
# + createdAt - field description  
# + updatedAt - field description  
# + deletedAt - field description
public type Tax record {|
    int id;
    int companyId;
    string name;
    decimal rate;
    string 'type = "normal";
    boolean enabled = true;
    int? createdBy?;
    string? createdFrom?;
    time:Utc createdAt;
    time:Utc updatedAt;
    time:Utc? deletedAt?;
|};

# Transactions.
#
# + id - field description  
# + companyId - field description  
# + 'type - field description  
# + paidAt - field description  
# + amount - field description  
# + currencyCode - field description  
# + currencyRate - field description  
# + accountId - field description  
# + documentId - field description  
# + contactId - field description  
# + categoryId - field description  
# + description - field description  
# + paymentMethod - field description  
# + reference - field description  
# + parentId - field description  
# + reconciled - field description  
# + createdFrom - field description  
# + createdBy - field description  
# + createdAt - field description  
# + updatedAt - field description  
# + deletedAt - field description
public type Transaction record {|
    int id;
    int companyId;
    string 'type;
    time:Utc paidAt;
    decimal amount;
    string currencyCode;
    decimal currencyRate;
    int accountId;
    int? documentId?;
    int? contactId?;
    int categoryId = 1;
    string? description?;
    string paymentMethod;
    string? reference?;
    int parentId = 0;
    boolean reconciled = false;
    string? createdFrom?;
    int? createdBy?;
    time:Utc createdAt;
    time:Utc updatedAt;
    time:Utc? deletedAt?;
|};

# Transfers.
#
# + id - field description  
# + companyId - field description  
# + expenseTransactionId - field description  
# + incomeTransactionId - field description  
# + createdBy - field description  
# + createdFrom - field description  
# + createdAt - field description  
# + updatedAt - field description  
# + deletedAt - field description
public type Transfer record {|
    int id;
    int companyId;
    int expenseTransactionId; // 'payment_id' renomeado
    int incomeTransactionId; // 'revenue_id' renomeado
    int? createdBy?;
    string? createdFrom?;
    time:Utc createdAt;
    time:Utc updatedAt;
    time:Utc? deletedAt?;
|};

# Users.
#
# + id - field description  
# + name - field description  
# + email - field description  
# + password - field description  
# + rememberToken - field description  
# + lastLoggedInAt - field description  
# + locale - field description  
# + landingPage - field description  
# + enabled - field description  
# + createdBy - field description  
# + createdFrom - field description  
# + createdAt - field description  
# + updatedAt - field description  
# + deletedAt - field description
public type User record {|
    int id;
    string name;
    string email;
    string password;
    string? rememberToken?;
    time:Utc? lastLoggedInAt?;
    string locale = "pt-br";
    string? landingPage = "dashboard";
    boolean enabled = true;
    int? createdBy?;
    string? createdFrom?;
    time:Utc createdAt;
    time:Utc updatedAt;
    time:Utc? deletedAt?;
|};

# Password Resets.
#
# + email - field description  
# + token - field description  
# + createdAt - field description
public type PasswordReset record {|
    string email;
    string token;
    time:Utc? createdAt?;
|};

# User Companies.
#
# + userId - field description  
# + companyId - field description
public type UserCompany record {|
    int userId;
    int companyId;
|};

# Notifications.
#
# + id - field description  
# + 'type - field description  
# + data - field description  
# + readAt - field description  
# + createdAt - field description  
# + updatedAt - field description
public type Notification record {|
    string id;
    string 'type;
    string data;
    time:Utc? readAt?;
    time:Utc createdAt;
    time:Utc updatedAt;
|};

# Roles.
#
# + id - field description  
# + name - field description  
# + displayName - field description  
# + description - field description  
# + createdBy - field description  
# + createdFrom - field description  
# + createdAt - field description  
# + updatedAt - field description
public type Role record {|
    int id;
    string name;
    string displayName;
    string? description?;
    int? createdBy?;
    string? createdFrom?;
    time:Utc createdAt;
    time:Utc updatedAt;
|};

# Permissions.
#
# + id - field description  
# + name - field description  
# + displayName - field description  
# + description - field description  
# + createdAt - field description  
# + updatedAt - field description
public type Permission record {|
    int id;
    string name;
    string displayName;
    string? description?;
    time:Utc createdAt;
    time:Utc updatedAt;
|};

# Role Permissions.
#
# + roleId - field description  
# + permissionId - field description
public type RolePermission record {|
    int roleId;
    int permissionId;
|};

# Bills.
#
# + id - field description  
# + companyId - field description  
# + billNumber - field description  
# + orderNumber - field description  
# + billStatusCode - field description  
# + billedAt - field description  
# + dueAt - field description  
# + amount - field description  
# + currencyCode - field description  
# + currencyRate - field description  
# + categoryId - field description  
# + vendorId - field description  
# + vendorName - field description  
# + vendorEmail - field description  
# + vendorTaxNumber - field description  
# + vendorPhone - field description  
# + vendorAddress - field description  
# + notes - field description  
# + parentId - field description  
# + createdAt - field description  
# + updatedAt - field description  
# + deletedAt - field description
public type Bill record {|
    int id;
    int companyId;
    string billNumber;
    string? orderNumber?;
    string billStatusCode;
    time:Utc billedAt;
    time:Utc dueAt;
    decimal amount;
    string currencyCode;
    decimal currencyRate;
    int categoryId = 1;
    int vendorId;
    string vendorName;
    string? vendorEmail?;
    string? vendorTaxNumber?;
    string? vendorPhone?;
    string? vendorAddress?;
    string? notes?;
    int parentId = 0;
    time:Utc createdAt;
    time:Utc updatedAt;
    time:Utc? deletedAt?;
|};

# Bill Histories.
#
# + id - field description  
# + companyId - field description  
# + billId - field description  
# + statusCode - field description  
# + notify - field description  
# + description - field description  
# + createdAt - field description  
# + updatedAt - field description  
# + deletedAt - field description
public type BillHistory record {|
    int id;
    int companyId;
    int billId;
    string statusCode;
    boolean notify;
    string? description?;
    time:Utc createdAt;
    time:Utc updatedAt;
    time:Utc? deletedAt?;
|};

# Bill Items.
#
# + id - field description  
# + companyId - field description  
# + billId - field description  
# + itemId - field description  
# + name - field description  
# + sku - field description  
# + quantity - field description  
# + price - field description  
# + total - field description  
# + tax - field description  
# + createdAt - field description  
# + updatedAt - field description  
# + deletedAt - field description
public type BillItem record {|
    int id;
    int companyId;
    int billId;
    int? itemId?;
    string name;
    string? sku?;
    decimal quantity;
    decimal price;
    decimal total;
    decimal tax = 0.0;
    time:Utc createdAt;
    time:Utc updatedAt;
    time:Utc? deletedAt?;
|};

# Bill Item Taxes.
#
# + id - field description  
# + companyId - field description  
# + billId - field description  
# + billItemId - field description  
# + taxId - field description  
# + name - field description  
# + amount - field description  
# + createdAt - field description  
# + updatedAt - field description  
# + deletedAt - field description
public type BillItemTax record {|
    int id;
    int companyId;
    int billId;
    int billItemId;
    int taxId;
    string name;
    decimal amount = 0.0;
    time:Utc createdAt;
    time:Utc updatedAt;
    time:Utc? deletedAt?;
|};
 
# Bill Statuses.
#
# + id - field description  
# + companyId - field description  
# + name - field description  
# + code - field description  
# + createdAt - field description  
# + updatedAt - field description  
# + deletedAt - field description
public type BillStatus record {|
    int id;
    int companyId;
    string name;
    string code;
    time:Utc createdAt;
    time:Utc updatedAt;
    time:Utc? deletedAt?;
|};

# Bill Totals.
#
# + id - field description  
# + companyId - field description  
# + billId - field description  
# + code - field description  
# + name - field description  
# + amount - field description  
# + sortOrder - field description  
# + createdAt - field description  
# + updatedAt - field description  
# + deletedAt - field description
public type BillTotal record {|
    int id;
    int companyId;
    int billId;
    string? code?;
    string name;
    decimal amount;
    int sortOrder;
    time:Utc createdAt;
    time:Utc updatedAt;
    time:Utc? deletedAt?;
|};