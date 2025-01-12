using { capmapp1.db.master.poheader as poheader } from '../db/data-model';

service MyService @(path:'CatalogService',requires: 'authenticated-user') {

    entity poheaderset @(odata.draft.enabled: true) as projection on poheader;

}
