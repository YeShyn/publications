library(ryandexdirect)

# ������� � �������
yadirSetLogin("irina.netpeak")

# ����������� ������� ���������� �� ���������� 7 ����
base_data <- yadirGetReport(
  DateRangeType = 'LAST_7_DAYS',
  FieldNames    = c('Date', 
                    'Clicks',
                    'Impressions',
                    'Cost')
)

# ������� ���������� �� ������������ ������
base_data <- yadirGetReport(
  DateFrom = '2020-09-01',
  DateTo   = Sys.Date() - 1,
  FieldNames  = c('Date', 
                  'Clicks',
                  'Impressions',
                  'Cost')
)

# ��������� �� ��� � ������
base_data_vat <- yadirGetReport(
  DateFrom = '2020-09-01',
  DateTo   = Sys.Date() - 1,
  FieldNames  = c('Date', 
                  'Clicks',
                  'Impressions',
                  'Cost'), 
  IncludeVAT = 'NO', 
  IncludeDiscount = 'YES'
)

# ��������� � ������ ���������
base_data_attributions <- 
  yadirGetReport(
    DateFrom = '2020-09-01',
    DateTo   = Sys.Date() - 1,
    FieldNames  = c('Date', 
                    'Conversions'), 
    Goals = c(13384610, 27475434),
    AttributionModels = c('FC', 'LC', 'LSC', 'LYDC')
)
