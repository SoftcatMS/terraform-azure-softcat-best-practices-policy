# copyright: 2018, The Authors

# Test values

describe azure_policy_definition(name: 'AuditSoftcatTag_SoftcatManaged') do
  it { should exist }
end

describe azure_policy_definition(name: 'AuditSoftcatTagOnResourceGroup_SoftcatManaged') do
  it { should exist }
end

describe azure_policy_definition(name: 'AuditSoftcatTag_SoftcatMonitored') do
  it { should exist }
end

describe azure_policy_definition(name: 'AuditSoftcatTagOnResourceGroup_SoftcatMonitored') do
  it { should exist }
end
