FROM grafana/grafana:latest

# Copy provisioning files for datasources and dashboards
COPY provisioning/datasources /etc/grafana/provisioning/datasources
COPY provisioning/dashboards /etc/grafana/provisioning/dashboards

# Copy custom dashboards (these will be automatically imported by the dashboards provider)
COPY dashboards /var/lib/grafana/dashboards
