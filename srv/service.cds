using { shippingregister } from '../db/schema.cds';

service shippingregisterSrv {
  @odata.draft.enabled
  entity SupplierInvoices as projection on shippingregister.SupplierInvoices;
  entity PurchaseOrders as projection on shippingregister.PurchaseOrders;
  entity PurchaseOrderLineItems as projection on shippingregister.PurchaseOrderLineItems;
  entity Suppliers as projection on shippingregister.Suppliers;
  
}