@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck:#CHECK                 
@EndUserText.label: 'auditing aspect AGR02'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zcds_com_inv_2__AG2
  as select from zdt_com_inv_ag2
{
  key invoice_id    as InvoiceId,
      customer_name as CustomerName,
      @Semantics.amount.currencyCode: 'Currency'
      inv_amount    as InvAmount,
      currency      as Currency,
      department    as Department,
      created_by    as CreatedBy,
      create_date   as CreateDate
}
