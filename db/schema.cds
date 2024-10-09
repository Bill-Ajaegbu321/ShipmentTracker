namespace shippingregister;

entity SupplierInvoices {
  key ID                    : UUID;
      SystemID              : Integer;
      SupplierInvoiceNumber : String(20);
      purchaseOrders        : Association to many PurchaseOrders
                                on purchaseOrders.POorders = $self;
      Supplier              : Association to Suppliers;
}

entity PurchaseOrders {
  key ID          : UUID;
      OrderNumber : String(20);
      OrderDate   : Date;
      TotalAmount : Decimal;
      Currency    : String;
      Status      : String(20);
      Items       : Association to many PurchaseOrderLineItems
                      on Items.purchaseOrders = $self;
      POorders    : Association to SupplierInvoices;
}


entity PurchaseOrderLineItems {
  key ID                    : UUID;
      document              : String;
      description           : String(200);
      netAmount             : Decimal;
      quantity              : Decimal;
      unitPrice             : Decimal;
      materialNumber        : String(50);
      SupplierMterialNumber : String(50);
      SupplierQuantity      : Decimal;
      SupplierUnitOfMeasure : String(10);
      SupplierMaterialDesc  : String(50);
      SupplierPartNumber    : String(50);
      unitOfMeasure         : String(10);
      purchaseOrders        : Association to PurchaseOrders;
}


entity Suppliers {
  key ID            : UUID;
      Name          : String(100);
      TaxId         : String(20);
      Address       : String(200);
      ContactPerson : String(100);
      Email         : String(100);
      PhoneNumber   : String(20);
}
