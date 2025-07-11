"use client";

import type { Table } from "@tanstack/react-table";
import { X } from "lucide-react";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";

interface DataTableToolbarProps<TData> {
	table: Table<TData>;
}

export function BookingListToolbar<TData>({
	table,
}: DataTableToolbarProps<TData>) {
	return (
		<div className="flex items-center justify-between py-4 ">
			<div className="flex flex-1 items-center space-x-2">
				<Input
					placeholder="Filter bookings..."
					value={(table.getColumn("name")?.getFilterValue() as string) ?? ""}
					onChange={(event) =>
						table.getColumn("name")?.setFilterValue(event.target.value)
					}
					className="h-8 w-[150px] lg:w-[200px]"
				/>
				{table.getState().columnFilters.length > 0 && (
					<Button
						variant="ghost"
						onClick={() => table.resetColumnFilters()}
						className="h-8 px-2 lg:px-3"
					>
						Reset
						<X />
					</Button>
				)}
			</div>
		</div>
	);
}
