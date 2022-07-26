
trivy image registry.redhat.io/ubi8/nodejs-14-minimal

trivy image --format json registry.redhat.io/ubi8/nodejs-14-minimal | jq '.'

head registry.redhat.io-ubi8-nodejs-14-minimal.csv

(echo "PkgName,VulnerabilityID,Severity,CVSS.nvd.V3Score,CVSS.redhat.V3Score" && trivy image --format json registry.redhat.io/ubi9/nodejs-16-minimal 2>/dev/null | jq -r '.Results[0].Vulnerabilities[] | "\(.PkgName),\(.VulnerabilityID),\(.Severity),\(.CVSS.nvd.V3Score),\(.CVSS.redhat.V3Score)"') | tee "registry.redhat.io-ubi9-nodejs-16-minimal.csv"
