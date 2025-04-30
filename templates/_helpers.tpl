{{/*
Expand the name of the chart.
*/}}
{{- define "vsftpd-helm.name" -}}
vsftpd
{{- end }}

{{/*
Create a default fullname.
*/}}
{{- define "vsftpd-helm.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name (include "vsftpd-helm.name" .) | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}

{{/*
Expand the chart name and version.
*/}}
{{- define "vsftpd-helm.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" }}
{{- end }}

