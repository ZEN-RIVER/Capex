using CapexCatalogService as service from '../../srv/cat-service';

annotate service.ApproverHistory with @(
    UI.LineItem #ApproverHistory                    : [
        {
            $Type: 'UI.DataField',
            Value: level,
            Label: '{i18n>ApproverLevel}',
        },
        {
            $Type: 'UI.DataField',
            Value: email,
            Label: '{i18n>Email}',
        },
        {
            $Type: 'UI.DataField',
            Value: status,
            Label: '{i18n>status}',
        },
        {
            $Type: 'UI.DataField',
            Value: days,
            Label: '{i18n>NumberOfDays}',
        },
        {
            $Type: 'UI.DataField',
            Value: comments,
            Label: '{i18n>notes2}',
        },
    ],
    UI.SelectionPresentationVariant #ApproverHistory: {
        $Type              : 'UI.SelectionPresentationVariantType',
        PresentationVariant: {
            $Type         : 'UI.PresentationVariantType',
            Visualizations: ['@UI.LineItem#ApproverHistory', ],
            SortOrder     : [{
                $Type     : 'Common.SortOrderType',
                Property  : level,
                Descending: false,
            }, ],
        },
        SelectionVariant   : {
            $Type        : 'UI.SelectionVariantType',
            SelectOptions: [],
        },
    },
);
