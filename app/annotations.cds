using { shippingregisterSrv } from '../srv/service.cds';

annotate shippingregisterSrv.PurchaseOrders with @UI.DataPoint #OrderNumber: {
  Value: OrderNumber,
  Title: 'Order Number',
};
annotate shippingregisterSrv.PurchaseOrders with @UI.DataPoint #OrderDate: {
  Value: OrderDate,
  Title: 'Order Date',
};
annotate shippingregisterSrv.PurchaseOrders with @UI.DataPoint #TotalAmount: {
  Value: TotalAmount,
  Title: 'Total Amount',
};
annotate shippingregisterSrv.PurchaseOrders with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#OrderNumber', ID: 'OrderNumber' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#OrderDate', ID: 'OrderDate' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#TotalAmount', ID: 'TotalAmount' }
];
annotate shippingregisterSrv.PurchaseOrders with @UI.HeaderInfo: {
  TypeName: 'Purchase Order',
  TypeNamePlural: 'Purchase Orders'
};
annotate shippingregisterSrv.PurchaseOrders with {
  OrderNumber @Common.Label: 'Order Number';
  OrderDate @Common.Label: 'Order Date';
  TotalAmount @Common.Label: 'Total Amount';
  Currency @Common.Label: 'Currency';
  Status @Common.Label: 'Status';
  Items @Common.Label: 'Purchase Order Line Items';
  POorders @Common.Label: 'Supplier Invoices'
};
annotate shippingregisterSrv.PurchaseOrders with @UI.SelectionFields : [
 OrderNumber,
 OrderDate,
 Status
];
annotate shippingregisterSrv.PurchaseOrders with @UI.LineItem : [
    { $Type: 'UI.DataField', Value: OrderNumber },
    { $Type: 'UI.DataField', Value: OrderDate },
    { $Type: 'UI.DataField', Value: TotalAmount },
    { $Type: 'UI.DataField', Value: Currency },
    { $Type: 'UI.DataField', Value: Status }
];
annotate shippingregisterSrv.PurchaseOrders with @UI.FieldGroup #PurchaseOrderDetails: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: OrderNumber },
    { $Type: 'UI.DataField', Value: OrderDate },
    { $Type: 'UI.DataField', Value: TotalAmount },
    { $Type: 'UI.DataField', Value: Currency },
    { $Type: 'UI.DataField', Value: Status }

  ]
};


annotate shippingregisterSrv.PurchaseOrderLineItems with @UI.LineItem #PurchaseOrderLineItems: [
    { $Type: 'UI.DataField', Value: document },
    { $Type: 'UI.DataField', Value: description },
    { $Type: 'UI.DataField', Value: netAmount },
    { $Type: 'UI.DataField', Value: quantity },
    { $Type: 'UI.DataField', Value: unitPrice },
    { $Type: 'UI.DataField', Value: materialNumber },
    { $Type: 'UI.DataField', Value: SupplierMterialNumber },
    { $Type: 'UI.DataField', Value: SupplierQuantity },
    { $Type: 'UI.DataField', Value: SupplierUnitOfMeasure },
    { $Type: 'UI.DataField', Value: SupplierMaterialDesc },
    { $Type: 'UI.DataField', Value: SupplierPartNumber },
    { $Type: 'UI.DataField', Value: unitOfMeasure }

  ];


annotate shippingregisterSrv.SupplierInvoices with @UI.LineItem #SupplierInvoices: [
    { $Type: 'UI.DataField', Value: SystemID },
    { $Type: 'UI.DataField', Value: SupplierInvoiceNumber }

  ];


annotate shippingregisterSrv.PurchaseOrders with @UI.Facets: [
  {
    $Type: 'UI.CollectionFacet',
    ID: 'GeneralTab',
    Label: 'General',
    Facets: [
      { $Type: 'UI.ReferenceFacet', ID: 'PurchaseOrderDetails', Label: 'Purchase Order Details', Target: '@UI.FieldGroup#PurchaseOrderDetails' } ]
  },
  {
    $Type: 'UI.CollectionFacet',
    ID: 'LineItemsTab',
    Label: 'Line Items',
    Facets: [
      { $Type: 'UI.ReferenceFacet', ID: 'PurchaseOrderLineItems', Label: 'Purchase Order Line Items', Target: 'Items/@UI.LineItem#PurchaseOrderLineItems' } ]
  },
  {
    $Type: 'UI.CollectionFacet',
    ID: 'InvoicesTab',
    Label: 'Invoices',
    Facets: [
      { $Type: 'UI.ReferenceFacet', ID: 'SupplierInvoices', Label: 'Supplier Invoices', Target: 'POorders/@UI.LineItem#SupplierInvoices' } ]
  }
];
annotate shippingregisterSrv.Suppliers with @UI.DataPoint #Name: {
  Value: Name,
  Title: 'Name',
};
annotate shippingregisterSrv.Suppliers with @UI.DataPoint #TaxId: {
  Value: TaxId,
  Title: 'Tax Id',
};
annotate shippingregisterSrv.Suppliers with @UI.DataPoint #Address: {
  Value: Address,
  Title: 'Address',
};
annotate shippingregisterSrv.Suppliers with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#Name', ID: 'Name' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#TaxId', ID: 'TaxId' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#Address', ID: 'Address' }
];
annotate shippingregisterSrv.Suppliers with @UI.HeaderInfo: {
  TypeName: 'Supplier',
  TypeNamePlural: 'Suppliers'
};
annotate shippingregisterSrv.Suppliers with {
  Name @Common.Label: 'Name';
  TaxId @Common.Label: 'Tax Id';
  Address @Common.Label: 'Address';
  ContactPerson @Common.Label: 'Contact Person';
  Email @Common.Label: 'Email';
  PhoneNumber @Common.Label: 'Phone Number'
};
annotate shippingregisterSrv.Suppliers with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: Name },
    { $Type: 'UI.DataField', Value: TaxId },
    { $Type: 'UI.DataField', Value: Address },
    { $Type: 'UI.DataField', Value: ContactPerson },
    { $Type: 'UI.DataField', Value: Email },
    { $Type: 'UI.DataField', Value: PhoneNumber }
];
annotate shippingregisterSrv.Suppliers with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: Name },
    { $Type: 'UI.DataField', Value: TaxId },
    { $Type: 'UI.DataField', Value: Address },
    { $Type: 'UI.DataField', Value: ContactPerson },
    { $Type: 'UI.DataField', Value: Email },
    { $Type: 'UI.DataField', Value: PhoneNumber }
]};
annotate shippingregisterSrv.Suppliers with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];
annotate shippingregisterSrv.PurchaseOrderLineItems with {
  purchaseOrders @Common.ValueList: {
    CollectionPath: 'PurchaseOrders',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: purchaseOrders_ID,
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'OrderNumber'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'OrderDate'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'TotalAmount'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'Currency'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'Status'
      },
    ],
  }
};
annotate shippingregisterSrv.PurchaseOrderLineItems with @UI.DataPoint #document: {
  Value: document,
  Title: 'Document',
};
annotate shippingregisterSrv.PurchaseOrderLineItems with @UI.DataPoint #description: {
  Value: description,
  Title: 'Description',
};
annotate shippingregisterSrv.PurchaseOrderLineItems with @UI.DataPoint #netAmount: {
  Value: netAmount,
  Title: 'Net Amount',
};
annotate shippingregisterSrv.PurchaseOrderLineItems with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#document', ID: 'Document' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#description', ID: 'Description' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#netAmount', ID: 'NetAmount' }
];
annotate shippingregisterSrv.PurchaseOrderLineItems with @UI.HeaderInfo: {
  TypeName: 'Purchase Order Line Item',
  TypeNamePlural: 'Purchase Order Line Items'
};
annotate shippingregisterSrv.PurchaseOrderLineItems with {
  document @Common.Label: 'Document';
  description @Common.Label: 'Description';
  netAmount @Common.Label: 'Net Amount';
  quantity @Common.Label: 'Quantity';
  unitPrice @Common.Label: 'Unit Price';
  materialNumber @Common.Label: 'Material Number';
  SupplierMterialNumber @Common.Label: 'Supplier Mterial Number';
  SupplierQuantity @Common.Label: 'Supplier Quantity';
  SupplierUnitOfMeasure @Common.Label: 'Supplier Unit Of Measure';
  SupplierMaterialDesc @Common.Label: 'Supplier Material Desc';
  SupplierPartNumber @Common.Label: 'Supplier Part Number';
  unitOfMeasure @Common.Label: 'Unit Of Measure';
  purchaseOrders @Common.Label: 'Purchase Order'
};
annotate shippingregisterSrv.PurchaseOrderLineItems with @UI.SelectionFields: [
  purchaseOrders_ID
];
annotate shippingregisterSrv.PurchaseOrderLineItems with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: document },
    { $Type: 'UI.DataField', Value: description },
    { $Type: 'UI.DataField', Value: netAmount },
    { $Type: 'UI.DataField', Value: quantity },
    { $Type: 'UI.DataField', Value: unitPrice },
    { $Type: 'UI.DataField', Value: materialNumber },
    { $Type: 'UI.DataField', Value: SupplierMterialNumber },
    { $Type: 'UI.DataField', Value: SupplierQuantity },
    { $Type: 'UI.DataField', Value: SupplierUnitOfMeasure },
    { $Type: 'UI.DataField', Value: SupplierMaterialDesc },
    { $Type: 'UI.DataField', Value: SupplierPartNumber },
    { $Type: 'UI.DataField', Value: unitOfMeasure },
    { $Type: 'UI.DataField', Label: 'Purchase Order', Value: purchaseOrders_ID }
];
annotate shippingregisterSrv.PurchaseOrderLineItems with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: document },
    { $Type: 'UI.DataField', Value: description },
    { $Type: 'UI.DataField', Value: netAmount },
    { $Type: 'UI.DataField', Value: quantity },
    { $Type: 'UI.DataField', Value: unitPrice },
    { $Type: 'UI.DataField', Value: materialNumber },
    { $Type: 'UI.DataField', Value: SupplierMterialNumber },
    { $Type: 'UI.DataField', Value: SupplierQuantity },
    { $Type: 'UI.DataField', Value: SupplierUnitOfMeasure },
    { $Type: 'UI.DataField', Value: SupplierMaterialDesc },
    { $Type: 'UI.DataField', Value: SupplierPartNumber },
    { $Type: 'UI.DataField', Value: unitOfMeasure },
    { $Type: 'UI.DataField', Label: 'Purchase Order', Value: purchaseOrders_ID }
]};
annotate shippingregisterSrv.PurchaseOrderLineItems with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];
annotate shippingregisterSrv.SupplierInvoices with {
  purchaseOrders @Common.ValueList: {
    CollectionPath: 'PurchaseOrders',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: purchaseOrders_ID,
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'OrderNumber'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'OrderDate'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'TotalAmount'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'Currency'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'Status'
      },
    ],
  }
};
annotate shippingregisterSrv.SupplierInvoices with {
  Supplier @Common.ValueList: {
    CollectionPath: 'Suppliers',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: Supplier_ID,
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'Name'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'TaxId'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'Address'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'ContactPerson'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'Email'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'PhoneNumber'
      },
    ],
  }
};
annotate shippingregisterSrv.SupplierInvoices with @UI.DataPoint #SystemID: {
  Value: SystemID,
  Title: 'System ID',
};
annotate shippingregisterSrv.SupplierInvoices with @UI.DataPoint #SupplierInvoiceNumber: {
  Value: SupplierInvoiceNumber,
  Title: 'Supplier Invoice Number',
};
annotate shippingregisterSrv.SupplierInvoices with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#SystemID', ID: 'SystemID' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#SupplierInvoiceNumber', ID: 'SupplierInvoiceNumber' }
];
annotate shippingregisterSrv.SupplierInvoices with @UI.HeaderInfo: {
  TypeName: 'Supplier Invoice',
  TypeNamePlural: 'Supplier Invoices'
};
annotate shippingregisterSrv.SupplierInvoices with {
  SystemID @Common.Label: 'System ID';
  SupplierInvoiceNumber @Common.Label: 'Supplier Invoice Number';
  purchaseOrders @Common.Label: 'Purchase Order';
  Supplier @Common.Label: 'Supplier'
};
annotate shippingregisterSrv.SupplierInvoices with @UI.SelectionFields: [
  purchaseOrders_ID,
  Supplier_ID
];
annotate shippingregisterSrv.SupplierInvoices with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: SystemID },
    { $Type: 'UI.DataField', Value: SupplierInvoiceNumber },
    { $Type: 'UI.DataField', Label: 'Purchase Order', Value: purchaseOrders_ID },
    { $Type: 'UI.DataField', Label: 'Supplier', Value: Supplier_ID }
];
annotate shippingregisterSrv.SupplierInvoices with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: SystemID },
    { $Type: 'UI.DataField', Value: SupplierInvoiceNumber },
    { $Type: 'UI.DataField', Label: 'Purchase Order', Value: purchaseOrders_ID },
    { $Type: 'UI.DataField', Label: 'Supplier', Value: Supplier_ID }
]};
annotate shippingregisterSrv.SupplierInvoices with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];