use strict;
use Test::More 0.98;

use_ok $_ for qw(
  OpenSearch

  OpenSearch::Index
  OpenSearch::Index::ClearCache
  OpenSearch::Index::Clone
  OpenSearch::Index::Close
  OpenSearch::Index::Create
  OpenSearch::Index::Delete
  OpenSearch::Index::DeleteDangling
  OpenSearch::Index::Exists
  OpenSearch::Index::ForceMerge
  OpenSearch::Index::Get
  OpenSearch::Index::GetAliases
  OpenSearch::Index::GetDangling
  OpenSearch::Index::GetMappings
  OpenSearch::Index::GetSettings
  OpenSearch::Index::ImportDangling
  OpenSearch::Index::Open
  OpenSearch::Index::Refresh
  OpenSearch::Index::SetAliases
  OpenSearch::Index::SetMappings
  OpenSearch::Index::Shrink
  OpenSearch::Index::Split
  OpenSearch::Index::Stats
  OpenSearch::Index::UpdateSettings

  OpenSearch::Search
  OpenSearch::Search::Count
  OpenSearch::Search::Search

  OpenSearch::Remote
  OpenSearch::Remote::Info

  OpenSearch::Document
  OpenSearch::Document::Bulk
  OpenSearch::Document::Get
  OpenSearch::Document::Index

  OpenSearch::Cluster
  OpenSearch::Cluster::AllocationExplain
  OpenSearch::Cluster::DelDecommissionAwareness
  OpenSearch::Cluster::DelRoutingAwareness
  OpenSearch::Cluster::GetDecommissionAwareness
  OpenSearch::Cluster::GetSettings
  OpenSearch::Cluster::Health
  OpenSearch::Cluster::SetDecommissionAwareness
  OpenSearch::Cluster::SetRoutingAwareness
  OpenSearch::Cluster::Stats
  OpenSearch::Cluster::UpdateSettings

  OpenSearch::Response
);

done_testing;

