package names

import "std"

func init() {
	// Please, do not edit this file to reserve your username, use a transaction instead.
	var (
		jaekwon       = std.Address("g1us8428u2a5satrlxzagqqa5m6vmuze025anjlj")
		manfred       = std.Address("g1u7y667z64x2h7vc6fmpcprgey4ck233jaww9zq")
		test1         = std.Address("g1jg8mtutu9khhfwc4nxmuhcpftf0pajdhfvsqf5")
		reservedAdmin = std.Address("g100000000000000000000000000000000000000") // FIXME: create a multisig.
		reservedNames = []string{
			// FIXME: complete this list.
			"gno", "gnolang", "tendermint", "cosmos", "hub", "admin",
			"ethereum", "bitcoin",
			// FIXME: reserve brands? then, require KYC to unlock?
		}
	)
	namespaces.Set("demo", &Space{Admins: []std.Address{jaekwon, manfred}})
	namespaces.Set("gnoland", &Space{Admins: []std.Address{jaekwon, manfred}})
	namespaces.Set("sys", &Space{Admins: []std.Address{jaekwon, manfred}})
	namespaces.Set("gov", &Space{Admins: []std.Address{jaekwon, manfred}})
	namespaces.Set("jaekwon", &Space{Admins: []std.Address{jaekwon}})
	namespaces.Set("manfred", &Space{Admins: []std.Address{manfred}})
	namespaces.Set("test1", &Space{Admins: []std.Address{test1}})

	for _, keyword := range reservedNames {
		namespaces.Set(keyword, &Space{Admins: []std.Address{reservedAdmin}})
	}
}
